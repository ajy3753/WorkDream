package com.cs.workdream.board.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.cs.workdream.board.model.vo.Board;
import com.cs.workdream.board.model.vo.Reply;
import com.cs.workdream.board.service.BoardService;
import com.cs.workdream.member.model.vo.Member;

@Controller
@RequestMapping("/board")
public class BoardController {

    @Autowired
    private BoardService boardService;

    // 而ㅻ�ㅻ땲�떚 �솃 �럹�씠吏� �몴�떆
    @GetMapping("/communityHome")
    public String showCommunityHome() {
        return "board/communityHome"; // communityHome.jsp
    }

    // 寃뚯떆湲� �옉�꽦 �럹�씠吏� �몴�떆ㅊㅌㅍㅎㅍㅌㅀㅍㄴㅌㄿ
    @GetMapping("/communityPost")
    public String showCommunityPost() {
        return "board/communityPost"; // communityPost.jsp
    }

    // 寃뚯떆湲� 蹂닿린 �럹�씠吏� �몴�ㅇㄴㄹㄴㅇㄹㅇ떆
    @GetMapping("/communityView")
    public String showCommunityView(@RequestParam("postId") int postId, Model model, HttpSession session) {
        // 寃뚯떆湲� 議고쉶 (吏곷Т 移댄뀒怨좊━ �룷�븿)
        Board post = boardService.getPostWithJobCategories(postId);
        if(post != null && "Y".equals(post.getStatus())) { // getStatus() 硫붿꽌�뱶 議댁옱 �솗�씤
            // 議고쉶�닔 利앷�
            boardService.increaseViewCount(postId);

            // 紐⑤뜽�뿉 寃뚯떆湲� 異붽�
            model.addAttribute("post", post);

            // �쁽�옱 �궗�슜�옄 �젙蹂� (濡쒓렇�씤 �궗�슜�옄 �젙蹂�)
            Member currentUser = (Member) session.getAttribute("loginUser");
            if(currentUser != null) {
                model.addAttribute("currentUser", currentUser);

                // �궗�슜�옄媛� �씠 寃뚯떆湲��뿉 怨듦컧�뻽�뒗吏� �뿬遺� �뙋�떒 濡쒖쭅 異붽� 媛��뒫
                boolean userLikedPost = false; // �떎�젣 怨듦컧 �뿬遺� �뙋�떒 濡쒖쭅 援ы쁽 �븘�슂
                model.addAttribute("userLikedPost", userLikedPost);
            } else {
                model.addAttribute("userLikedPost", false);
            }

            return "board/communityView"; // communityView.jsp
        } else {
            model.addAttribute("errorMsg", "寃뚯떆湲��쓣 李얠쓣 �닔 �뾾�뒿�땲�떎.");
            return "common/errorPage"; // �뿉�윭 �럹�씠吏�
        }
    }
    
    // 寃뚯떆湲� �닔�젙 �럹�씠吏� �몴�떆
    @GetMapping("/editPost")
    public String showEditPost(@RequestParam("postId") int postId, Model model, HttpSession session) {
        // 寃뚯떆湲� 議고쉶
        Board post = boardService.getPostWithJobCategories(postId);
        if(post != null && "Y".equals(post.getStatus())) {
            // �쁽�옱 �궗�슜�옄 �젙蹂ㅌㅊㅌㅋㅊ�
            Member currentUser = (Member) session.getAttribute("loginUser");
            if(currentUser != null && post.getUserNo() == currentUser.getUserNo()) {
                model.addAttribute("post", post);
                return "board/editPost"; // editPost.jsp
            } else {
                model.addAttribute("errorMsg", "寃뚯떆湲��쓣 �닔�젙�븷 沅뚰븳�씠 �뾾�뒿�땲�떎.");
                return "common/errorPage";
            }
        } else {
            model.addAttribute("errorMsg", "寃뚯떆湲��쓣 李얠쓣 �닔 �뾾�뒿�땲�떎.");
            return "common/errorPage"; // �뿉�윭 �럹�씠吏�
        }
    }

    // 而ㅻ�ㅻ땲�떚 寃뚯떆�뙋 紐⑸줉 �럹�씠吏� �몴�떆
    @GetMapping("/communityList")
    public String showCommunityList(@RequestParam(value="category", defaultValue="�쟾泥닿�") String category, Model model) {
        model.addAttribute("category", category);
        return "board/communityList"; // communityList.jsp
    }

    // �엫�떆 濡쒓렇�씤 �뿏�뱶�룷�씤�듃 (媛쒕컻�슜)
    @GetMapping("/testLogin")
    public String testLogin(HttpSession session) {
        Member mockUser = new Member();
        mockUser.setUserNo(1); // �떎�젣 �궗�슜�옄 踰덊샇濡� 蹂�寃�
        mockUser.setUserId("testuser123"); // userId �꽕�젙
        // �븘�슂�븳 �떎瑜� �븘�뱶�룄 �꽕�젙
        session.setAttribute("loginUser", mockUser);
        return "redirect:/resume/enrollresume"; // 濡쒓렇�씤 �썑 由щ떎�씠�젆�듃�븷 �럹�씠吏�
    }
    
    // 梨꾩슜怨듦퀬紐⑸줉 留듯븨
    @GetMapping("/listOfJobOpening")
    public String showJobOpeningList() {
        return "board/listOfJobOpening"; // listOfJobOpening.jsp
    }
    
    // -------------------
    // REST API 愿��젴 硫붿꽌�뱶
    // -------------------

    // 寃뚯떆湲� �닔 議고쉶 (REST API)
    @GetMapping("/api/postCount")
    @ResponseBody
    public Map<String, Object> getPostCount() {
        int count = boardService.countPosts("�쟾泥닿�");
        Map<String, Object> response = new HashMap<>();
        response.put("count", count);
        return response;
    }

    // �씤湲� 寃뚯떆湲� 議고쉶 (REST API)
    @GetMapping("/api/popularPosts")
    @ResponseBody
    public Map<String, Object> getPopularPosts() {
        List<Board> posts = boardService.getPopularPosts();
        Map<String, Object> response = new HashMap<>();
        response.put("posts", posts);
        return response;
    }

    // 移댄뀒怨좊━ 諛� �븘�꽣�뿉 �뵲瑜� 寃뚯떆湲� 議고쉶 (REST API)
    @GetMapping("/api/posts")
    @ResponseBody
    public Map<String, Object> getPosts(
            @RequestParam(value="category", defaultValue="�쟾泥닿�") String category,
            @RequestParam(value="filter", defaultValue="理쒖떊�닚") String filter,
            @RequestParam(value="jobFilter", required=false) String jobFilter,
            @RequestParam(value="offset", defaultValue="0") int offset,
            @RequestParam(value="limit", defaultValue="10") int limit) {

        List<Board> posts = boardService.getFilteredPosts(category, filter, jobFilter, offset, limit);
        int totalCount = boardService.countFilteredPosts(category, filter, jobFilter);

        Map<String, Object> response = new HashMap<>();
        response.put("posts", posts);
        response.put("totalCount", totalCount);
        return response;
    }

    // �깉濡쒖슫 寃뚯떆湲� �깮�꽦 (REST API)
    @PostMapping("/api/posts")
    @ResponseBody
    public Map<String, Object> createPost(
            @RequestParam("category") String category,
            @RequestParam("title") String title,
            @RequestParam("content") String content,
            @RequestParam(value="image", required=false) MultipartFile image,
            @RequestParam(value="jobs", required=false) List<String> jobs,
            @RequestParam(value="hashtags", required=false) List<String> hashtags,
            HttpSession session) {
        
        Map<String, Object> response = new HashMap<>();
        try {
            // �쁽�옱 濡쒓렇�씤�븳 �궗�슜�옄 �젙蹂� 媛��졇�삤湲�
            Member currentUser = (Member) session.getAttribute("loginUser");
            if(currentUser == null) {
                response.put("status", "fail");
                response.put("message", "濡쒓렇�씤�씠 �븘�슂�빀�땲�떎.");
                return response;
            }
            int userNo = currentUser.getUserNo();
            String author = currentUser.getUserId(); // �븘�슂�뿉 �뵲�씪 蹂�寃�

            // �씠誘몄� �뾽濡쒕뱶 泥섎━
            String imagePath = null;
            if(image != null && !image.isEmpty()) {
                // 怨좎젙�맂 �뾽濡쒕뱶 �뵒�젆�넗由� �꽕�젙
                String uploadDir = "C:/uploads/";
                File dir = new File(uploadDir);
                if (!dir.exists()) {
                    dir.mkdirs(); // �뵒�젆�넗由� �깮�꽦
                }
                String originalFilename = image.getOriginalFilename();
                String uniqueFilename = System.currentTimeMillis() + "_" + originalFilename;
                File dest = new File(dir, uniqueFilename);
                image.transferTo(dest);
                imagePath = uniqueFilename; // �씠誘몄� �뙆�씪紐낅쭔 ���옣

                // �뾽濡쒕뱶 寃쎈줈 濡쒓렇 異쒕젰
                System.out.println("Image uploaded to: " + dest.getAbsolutePath());
            }

            // Board 媛앹껜 �깮�꽦
            Board board = new Board();
            board.setCategory(category);
            board.setTitle(title);
            board.setContent(content);
            board.setImagePath(imagePath);
            board.setAuthor(author);
            board.setUserNo(userNo);
            board.setCreatedTime(Timestamp.valueOf(LocalDateTime.now()));
            board.setViewCount(0);
            board.setLikeCount(0);
            board.setHashtags(hashtags);
            board.setJobCategories(jobs);
            board.setStatus("Y"); // 寃뚯떆湲� �긽�깭 �꽕�젙

            // 寃뚯떆湲� �궫�엯
            int result = boardService.createPost(board);
            if(result > 0) {
                response.put("status", "success");
                response.put("postId", board.getPostingNo());
            } else {
                response.put("status", "fail");
                response.put("message", "寃뚯떆湲� �벑濡앹뿉 �떎�뙣�뻽�뒿�땲�떎.");
            }
        } catch(IOException e) {
            e.printStackTrace();
            response.put("status", "error");
            response.put("message", "�씠誘몄� �뾽濡쒕뱶 以� �삤瑜섍� 諛쒖깮�뻽�뒿�땲�떎: " + e.getMessage());
        } catch(Exception e) {
            e.printStackTrace();
            response.put("status", "error");
            response.put("message", "�꽌踰� �삤瑜섍� 諛쒖깮�뻽�뒿�땲�떎: " + e.getMessage());
        }

        return response;
    }

    // 寃뚯떆湲� �궘�젣 API (REST API)
    @DeleteMapping("/api/posts/{postingNo}")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> deletePost(
            @PathVariable("postingNo") int postingNo,
            HttpSession session) { // �꽭�뀡�쓣 �넻�빐 �궗�슜�옄 �젙蹂� 媛��졇�삤湲�

        Map<String, Object> response = new HashMap<>();

        // �쁽�옱 �궗�슜�옄 �젙蹂� 媛��졇�삤湲� (�꽭�뀡�쓣 �넻�빐)
        Member currentUser = (Member) session.getAttribute("loginUser");
        if(currentUser == null) {
            response.put("status", "fail");
            response.put("message", "濡쒓렇�씤�씠 �븘�슂�빀�땲�떎.");
            return new ResponseEntity<>(response, HttpStatus.UNAUTHORIZED);
        }
        int currentUserNo = currentUser.getUserNo();

        // 寃뚯떆湲� �젙蹂� 議고쉶
        Board post = boardService.getPost(postingNo);
        if (post == null || !"Y".equals(post.getStatus())) {
            response.put("status", "fail");
            response.put("message", "寃뚯떆湲��쓣 李얠쓣 �닔 �뾾�뒿�땲�떎.");
            return new ResponseEntity<>(response, HttpStatus.NOT_FOUND);
        }

        // �옉�꽦�옄 �솗�씤
        if (post.getUserNo() != currentUserNo) {
            response.put("status", "fail");
            response.put("message", "蹂몄씤�쓽 寃뚯떆湲�留� �궘�젣�븷 �닔 �엳�뒿�땲�떎.");
            return new ResponseEntity<>(response, HttpStatus.FORBIDDEN);
        }

        // 寃뚯떆湲� �궘�젣
        int result = boardService.deletePost(postingNo);
        if (result > 0) {
            response.put("status", "success");
            response.put("message", "寃뚯떆湲��씠 �궘�젣�릺�뿀�뒿�땲�떎.");
            return new ResponseEntity<>(response, HttpStatus.OK);
        } else {
            response.put("status", "fail");
            response.put("message", "寃뚯떆湲� �궘�젣�뿉 �떎�뙣�뻽�뒿�땲�떎.");
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // 寃뚯떆湲� 議고쉶 API (REST API)
    @GetMapping("/api/posts/{postingNo}")
    @ResponseBody
    public ResponseEntity<Board> getPost(@PathVariable("postingNo") int postingNo) {
        Board post = boardService.getPostWithJobCategories(postingNo);
        if (post == null || !"Y".equals(post.getStatus())) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        // 議고쉶�닔 利앷�
        boardService.increaseViewCount(postingNo);
        return new ResponseEntity<>(post, HttpStatus.OK);
    }

    // 寃뚯떆湲� �닔�젙 API (REST API)
    @PostMapping("/api/posts/{postingNo}/update")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> updatePost(
            @PathVariable("postingNo") int postingNo,
            @RequestParam("category") String category,
            @RequestParam("title") String title,
            @RequestParam("content") String content,
            @RequestParam(value="image", required=false) MultipartFile image,
            @RequestParam(value="jobs", required=false) List<String> jobs,
            @RequestParam(value="hashtags", required=false) List<String> hashtags,
            HttpSession session) {

        Map<String, Object> response = new HashMap<>();

        try {
            // �쁽�옱 �궗�슜�옄 �젙蹂� 媛��졇�삤湲� (濡쒓렇�씤 �궗�슜�옄 �젙蹂�)
            Member currentUser = (Member) session.getAttribute("loginUser");
            if(currentUser == null) {
                response.put("status", "fail");
                response.put("message", "濡쒓렇�씤�씠 �븘�슂�빀�땲�떎.");
                return new ResponseEntity<>(response, HttpStatus.UNAUTHORIZED);
            }
            int userNo = currentUser.getUserNo();

            // 寃뚯떆湲� �젙蹂� 議고쉶
            Board existingPost = boardService.getPostWithJobCategories(postingNo);
            if(existingPost == null || !"Y".equals(existingPost.getStatus())) {
                response.put("status", "fail");
                response.put("message", "寃뚯떆湲��쓣 李얠쓣 �닔 �뾾�뒿�땲�떎.");
                return new ResponseEntity<>(response, HttpStatus.NOT_FOUND);
            }

            // �옉�꽦�옄 �솗�씤
            if(existingPost.getUserNo() != userNo) {
                response.put("status", "fail");
                response.put("message", "蹂몄씤�쓽 寃뚯떆湲�留� �닔�젙�븷 �닔 �엳�뒿�땲�떎.");
                return new ResponseEntity<>(response, HttpStatus.FORBIDDEN);
            }

            // �씠誘몄� �뾽濡쒕뱶 泥섎━ (湲곗〈 �씠誘몄� �쑀吏� �삉�뒗 �깉濡쒖슫 �씠誘몄�濡� ��泥�)
            String imagePath = existingPost.getImagePath(); // 湲곗〈 �씠誘몄� 寃쎈줈 �쑀吏�
            if(image != null && !image.isEmpty()) {
                // 怨좎젙�맂 �뾽濡쒕뱶 �뵒�젆�넗由� �꽕�젙
                String uploadDir = "C:/uploads/";
                File dir = new File(uploadDir);
                if (!dir.exists()) {
                    dir.mkdirs(); // �뵒�젆�넗由� �깮�꽦
                }
                String originalFilename = image.getOriginalFilename();
                String uniqueFilename = System.currentTimeMillis() + "_" + originalFilename;
                File dest = new File(dir, uniqueFilename);
                image.transferTo(dest);
                imagePath = uniqueFilename; // �씠誘몄� �뙆�씪紐낅쭔 ���옣

                // 湲곗〈 �씠誘몄� �뙆�씪 �궘�젣 (�꽑�깮 �궗�빆)
                if(existingPost.getImagePath() != null) {
                    File oldImage = new File("C:/uploads/" + existingPost.getImagePath());
                    if(oldImage.exists()) {
                        oldImage.delete();
                        System.out.println("Deleted old image: " + oldImage.getAbsolutePath());
                    }
                }

                // �뾽濡쒕뱶 寃쎈줈 濡쒓렇 異쒕젰
                System.out.println("Image updated to: " + dest.getAbsolutePath());
            }

            // Board 媛앹껜 �깮�꽦 諛� �뾽�뜲�씠�듃�븷 �븘�뱶 �꽕�젙
            Board board = new Board();
            board.setPostingNo(postingNo);
            board.setCategory(category);
            board.setTitle(title);
            board.setContent(content);
            board.setImagePath(imagePath);
            board.setUserNo(userNo);
            board.setJobCategories(jobs);
            board.setHashtags(hashtags);
            board.setStatus("Y"); // �긽�깭 �쑀吏�

            // 寃뚯떆湲� �뾽�뜲�씠�듃
            int result = boardService.updatePost(board);
            if(result > 0) {
                response.put("status", "success");
                response.put("message", "寃뚯떆湲��씠 �닔�젙�릺�뿀�뒿�땲�떎.");
                response.put("postId", postingNo);
                return new ResponseEntity<>(response, HttpStatus.OK);
            } else {
                response.put("status", "fail");
                response.put("message", "寃뚯떆湲� �닔�젙�뿉 �떎�뙣�뻽�뒿�땲�떎.");
                return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
            }
        } catch(IOException e) {
            e.printStackTrace();
            response.put("status", "error");
            response.put("message", "�씠誘몄� �뾽濡쒕뱶 以� �삤瑜섍� 諛쒖깮�뻽�뒿�땲�떎: " + e.getMessage());
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch(Exception e) {
            e.printStackTrace();
            response.put("status", "error");
            response.put("message", "�꽌踰� �삤瑜섍� 諛쒖깮�뻽�뒿�땲�떎: " + e.getMessage());
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


    @PostMapping("/api/posts/{postingNo}/like")
    @ResponseBody
    public Map<String, Object> likePost(@PathVariable("postingNo") int postingNo, HttpSession session) {
        Map<String, Object> response = new HashMap<>();
        try {
            // 濡쒓렇�씤 �뿬遺� �솗�씤
            Member currentUser = (Member) session.getAttribute("loginUser");
            if(currentUser == null) {
                response.put("status", "fail");
                response.put("message", "濡쒓렇�씤�씠 �븘�슂�빀�땲�떎.");
                return response;
            }

            // 怨듦컧 濡쒖쭅
            boolean success = boardService.likePost(postingNo, currentUser.getUserNo());

            if(success) {
                response.put("status", "success");
                response.put("message", "怨듦컧�뻽�뒿�땲�떎.");
            } else {
                response.put("status", "fail");
                response.put("message", "�씠誘� 怨듦컧�뻽嫄곕굹, 怨듦컧�뿉 �떎�뙣�뻽�뒿�땲�떎.");
            }
        } catch(Exception e) {
            e.printStackTrace();
            response.put("status", "error");
            response.put("message", "�꽌踰� �삤瑜섍� 諛쒖깮�뻽�뒿�땲�떎.");
        }
        return response;
    }

    /* 寃뚯떆湲� 怨듦컧 痍⑥냼 API */
    @PostMapping("/api/posts/{postingNo}/unlike")
    @ResponseBody
    public Map<String, Object> unlikePost(@PathVariable("postingNo") int postingNo, HttpSession session) {
        Map<String, Object> response = new HashMap<>();
        try {
            // 濡쒓렇�씤 �뿬遺� �솗�씤
            Member currentUser = (Member) session.getAttribute("loginUser");
            if(currentUser == null) {
                response.put("status", "fail");
                response.put("message", "濡쒓렇�씤�씠 �븘�슂�빀�땲�떎.");
                return response;
            }

            // 怨듦컧 痍⑥냼 濡쒖쭅
            boolean success = boardService.unlikePost(postingNo, currentUser.getUserNo());

            if(success) {
                response.put("status", "success");
                response.put("message", "怨듦컧�쓣 痍⑥냼�뻽�뒿�땲�떎.");
            } else {
                response.put("status", "fail");
                response.put("message", "怨듦컧�쓣 �븯吏� �븡�븯嫄곕굹, 痍⑥냼�뿉 �떎�뙣�뻽�뒿�땲�떎.");
            }
        } catch(Exception e) {
            e.printStackTrace();
            response.put("status", "error");
            response.put("message", "�꽌踰� �삤瑜섍� 諛쒖깮�뻽�뒿�땲�떎.");
        }
        return response;
    }

    /* �뙎湲� 怨듦컧 API */
    @PostMapping("/api/replies/{replyNo}/like")
    @ResponseBody
    public Map<String, Object> likeReply(@PathVariable("replyNo") int replyNo, HttpSession session) {
        Map<String, Object> response = new HashMap<>();
        try {
            // 濡쒓렇�씤 �뿬遺� �솗�씤
            Member currentUser = (Member) session.getAttribute("loginUser");
            if(currentUser == null) {
                response.put("status", "fail");
                response.put("message", "濡쒓렇�씤�씠 �븘�슂�빀�땲�떎.");
                return response;
            }

            // 怨듦컧 濡쒖쭅
            boolean success = boardService.likeReply(replyNo, currentUser.getUserNo());

            if(success) {
                response.put("status", "success");
                response.put("message", "怨듦컧�뻽�뒿�땲�떎.");
            } else {
                response.put("status", "fail");
                response.put("message", "�씠誘� 怨듦컧�뻽嫄곕굹, 怨듦컧�뿉 �떎�뙣�뻽�뒿�땲�떎.");
            }
        } catch(Exception e) {
            e.printStackTrace();
            response.put("status", "error");
            response.put("message", "�꽌踰� �삤瑜섍� 諛쒖깮�뻽�뒿�땲�떎.");
        }
        return response;
    }

    /* �뙎湲� 怨듦컧 痍⑥냼 API */
    @PostMapping("/api/replies/{replyNo}/unlike")
    @ResponseBody
    public Map<String, Object> unlikeReply(@PathVariable("replyNo") int replyNo, HttpSession session) {
        Map<String, Object> response = new HashMap<>();
        try {
            // 濡쒓렇�씤 �뿬遺� �솗�씤
            Member currentUser = (Member) session.getAttribute("loginUser");
            if(currentUser == null) {
                response.put("status", "fail");
                response.put("message", "濡쒓렇�씤�씠 �븘�슂�빀�땲�떎.");
                return response;
            }

            // 怨듦컧 痍⑥냼 濡쒖쭅
            boolean success = boardService.unlikeReply(replyNo, currentUser.getUserNo());

            if(success) {
                response.put("status", "success");
                response.put("message", "怨듦컧�쓣 痍⑥냼�뻽�뒿�땲�떎.");
            } else {
                response.put("status", "fail");
                response.put("message", "怨듦컧�쓣 �븯吏� �븡�븯嫄곕굹, 痍⑥냼�뿉 �떎�뙣�뻽�뒿�땲�떎.");
            }
        } catch(Exception e) {
            e.printStackTrace();
            response.put("status", "error");
            response.put("message", "�꽌踰� �삤瑜섍� 諛쒖깮�뻽�뒿�땲�떎.");
        }
        return response;
    }

    
    // �듅�젙 寃뚯떆湲��쓽 �뙎湲� 議고쉶 (REST API)
    @GetMapping("/api/replies")
    @ResponseBody
    public Map<String, Object> getReplies(@RequestParam("postId") int postId) {
        List<Reply> replies = boardService.getReplies(postId);
        Map<String, Object> response = new HashMap<>();
        response.put("replies", replies);
        return response;
    }

    // �뙎湲� 異붽� (REST API)
    @PostMapping("/api/replies")
    @ResponseBody
    public Map<String, Object> addReply(@RequestBody Reply reply, HttpSession session) {
        Map<String, Object> response = new HashMap<>();
        try {
            // �꽭�뀡�뿉�꽌 �쁽�옱 �궗�슜�옄 �젙蹂� 媛��졇�삤湲�
            Member currentUser = (Member) session.getAttribute("loginUser");
            if(currentUser == null) {
                response.put("status", "fail");
                response.put("message", "濡쒓렇�씤�씠 �븘�슂�빀�땲�떎.");
                return response;
            }
            int userNo = currentUser.getUserNo();
            reply.setUserNo(userNo);
            // author �븘�뱶�뒗 MyBatis selectReplies�뿉�꽌 JOIN�쓣 �넻�빐 媛��졇�삤湲� �븣臾몄뿉 �꽌踰꾩뿉�꽌 �꽕�젙�븷 �븘�슂 �뾾�쓬

            int result = boardService.addReply(reply);
            if(result > 0) {
                response.put("status", "success");
            } else {
                response.put("status", "fail");
                response.put("message", "�뙎湲� �벑濡앹뿉 �떎�뙣�뻽�뒿�땲�떎.");
            }
            return response;
        } catch(Exception e) {
            e.printStackTrace();
            response.put("status", "error");
            response.put("message", "�꽌踰� �삤瑜섍� 諛쒖깮�뻽�뒿�땲�떎.");
            return response;
        }
    }   
    
    // �뙎湲� �궘�젣 (REST API)
    @DeleteMapping("/api/replies/{replyNo}")
    @ResponseBody
    public Map<String, Object> deleteReply(@PathVariable("replyNo") int replyNo, HttpSession session) {
        Map<String, Object> response = new HashMap<>();
        try {
            // �꽭�뀡�뿉�꽌 �쁽�옱 �궗�슜�옄 �젙蹂� 媛��졇�삤湲�
            Member currentUser = (Member) session.getAttribute("loginUser");
            if(currentUser == null) {
                response.put("status", "fail");
                response.put("message", "濡쒓렇�씤�씠 �븘�슂�빀�땲�떎.");
                return response;
            }

            // �뙎湲� �냼�쑀�옄 �솗�씤
            Reply existingReply = boardService.getReplyById(replyNo);
            if(existingReply == null || existingReply.getUserNo() != currentUser.getUserNo()) {
                response.put("status", "fail");
                response.put("message", "沅뚰븳�씠 �뾾�뒿�땲�떎.");
                return response;
            }

            int result = boardService.deleteReply(replyNo);
            if(result > 0) {
                response.put("status", "success");
            } else {
                response.put("status", "fail");
                response.put("message", "�뙎湲� �궘�젣�뿉 �떎�뙣�뻽�뒿�땲�떎.");
            }
        } catch(Exception e) {
            e.printStackTrace();
            response.put("status", "error");
            response.put("message", "�꽌踰� �삤瑜섍� 諛쒖깮�뻽�뒿�땲�떎.");
        }
        return response;
    }

    // �씠誘몄� �꽌鍮숈쓣 �쐞�븳 而⑦듃濡ㅻ윭 硫붿꽌�뱶 異붽�
    @GetMapping("/uploads/{filename}")
    @ResponseBody
    public ResponseEntity<byte[]> serveImage(@PathVariable("filename") String filename) {
        try {
            // 怨좎젙�맂 �뾽濡쒕뱶 �뵒�젆�넗由� �꽕�젙
            String uploadDir = "C:/uploads/";
            File imageFile = new File(uploadDir, filename);
            if (!imageFile.exists()) {
                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
            }

            byte[] imageBytes = Files.readAllBytes(imageFile.toPath());
            String mimeType = Files.probeContentType(imageFile.toPath());
            if (mimeType == null) {
                mimeType = "application/octet-stream";
            }

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.parseMediaType(mimeType));
            return new ResponseEntity<>(imageBytes, headers, HttpStatus.OK);
        } catch(IOException e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    
    /**
     * �젣紐⑹쑝濡� 寃뚯떆湲� 寃��깋 (REST API)
     * GET /board/api/searchPosts?title=寃��깋�뼱&offset=0&limit=10
     */
    @GetMapping("/api/searchPosts")
    @ResponseBody
    public Map<String, Object> searchPosts(
            @RequestParam("title") String title,
            @RequestParam(value = "offset", defaultValue = "0") int offset,
            @RequestParam(value = "limit", defaultValue = "10") int limit) {

        List<Board> posts = boardService.searchPostsByTitle(title, offset, limit);
        int totalCount = boardService.countSearchPostsByTitle(title);

        Map<String, Object> response = new HashMap<>();
        response.put("posts", posts);
        response.put("totalCount", totalCount);
        return response;
    }

}
