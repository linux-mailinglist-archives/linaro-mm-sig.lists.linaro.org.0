Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D310754D51
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 16 Jul 2023 06:34:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C27B543F0B
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 16 Jul 2023 04:34:25 +0000 (UTC)
Received: from sonic306-21.consmr.mail.gq1.yahoo.com (sonic306-21.consmr.mail.gq1.yahoo.com [98.137.68.84])
	by lists.linaro.org (Postfix) with ESMTPS id C56813EC04
	for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Jul 2023 04:34:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=yahoo.com header.s=s2048 header.b=r4Bve3i+;
	spf=pass (lists.linaro.org: domain of astrajoan@yahoo.com designates 98.137.68.84 as permitted sender) smtp.mailfrom=astrajoan@yahoo.com;
	dmarc=pass (policy=reject) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1689482058; bh=NBAdiKYmi89LSSkZRzf1BlyazQhJqtKgvKAY/BGhjjA=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To; b=r4Bve3i+UWI2Npn/uFgWrYPHNsO9uGsDSWCB5yJd8TIlDlrRfmxu+M7JEfC0I7v63rSmCvjWDMpgN0dk7jRQlW1RMsljF8eNZCpLMvt2Ybaev+zkv37WpeEXDbzQoF6ryY2c6E8U+HYZxwylz6sGsL2Ncw6gWSQYfMc4GdwcIsQ8cN4xQT0/Gpcd+elTpZ2wTOK2eO9DrL7UW9cGzknzb/qq6ur4B0oAk+z/1VFcnvD044Ti9Vdzyry1P4KOtuK50clZu06GsiG10Y4UNdEM9rlynYZ3xyyYMIVi69HZkpYEmyB6ovyuKD9tS9r9lk9Gs432LGbKkan3rGedcDq5Vg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1689482058; bh=NQszTS76D5rv6MHLLByyQLqMOm6UI+uU3IpFzji9xwX=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=sVF9BP5BTo+LYtZjR2JUELXLHcAioXUAcLWzE6aamY3j4Etvg/XQMkjLgrahMelxN2YSfXekHcHQRvLUW+c87agTYLgedZNmORDhyTLIuFkBcCNYbCtupvxjc5DBAYdY4oezDNTXtJL/WT4NDpEw8tb+jyCB9pwlHOL6FXYgt8EKnkhkywe93RC35AE5VHA7wW19a/yhL5GKR4lLjb3kVjkzfPTo3ef5Gskl0d2EQEJcfC/k0Zlh7S0FjWyOYrCmkLFxOYiuc5HuIzScmW0oUP8JVOmPEvQWqmg+c2j69EPv8WGf+lNsPoPn1nF5H35TADqP6oDOgeh3qCg/gqhLcw==
X-YMail-OSG: QlJm3n4VM1njJnSfZKm2b71XxIeLD5BNvK8Fm7mszctkKy2Xag7EEMt1lL_wkLg
 EyuLLDdIUiIBeq24oJJfq6pdZiRMVxpxZr9A_wiro1jNpU8yt1jwSCmWLinbl9hNHxZ1ei33_lTP
 ya81LtN0kkrhx0TSAvsxeSNXzoLT1eubUFYtDVgDw1gpUN.RdHGZFdaZ6dxwZbdXITi.KtPIspTM
 ndVPKirLiFqio6uKt4v2422Yg4Jt9nB3HSHG.TnK_wR3InaccCqmb6qNeRtWQPqd2MqovRnwKw6T
 38KPQtM13OmETW0M00IQ1tsbR_QwpveQjrGt_vng568NOjx665MY0Ce4_pPFP4sN_czbSs37KIJj
 zNKkJYTfH6Ev6iHgl63fty2kdolAapMoc_gau2Q0tLDR8drd3e611L.3BG9aKmb7DsPswP7VJJ_4
 awF20haczQ2LHV8K7iaYaT5lsnnfN8Q2qyiB9uJjh2ziBBhbnM855cTtamsbUenT1QhVDcDsD1Mv
 YFpVsE19D2cgVzwWXfQkTlxu77nczQQnpgdotVL9m7Huq7THcq0Xx02Cj5jx0kZQtQ8jkur1vyyI
 r2H0X.IBVfEwnFk1j1_M6BHjmqDvTevi7JJbMhM70jW3.B4pefJU4_s0KZlCgonNAo.V4kzdaSoP
 813CexUjTUJpvKxayc_MFycc6Yqvdjckwiv08Ut6JbNqmdS9GIrlkZoIvbYUzqo.oTohlNtOZMcg
 pWZpjKW4LQer_aFsZ83hcDPe2TwN1uz0fo8PsZrvJbeVZ.FSz_cBqjaH0fagNZ5TrTmGo5pUDj_B
 gEPPIHmvpTXvWBHS4BNim0yH.ZVMeM93zlcGxnOL0lUC15.3cqCmahfD1Yvw6uskD7fueZ1SYeGi
 D_N50MFQaPCyFbGFZIlnI2qYJU3QCUYXzjmIVdcxml_7QqUdTjpHkZR5v60k2eYYUk6eFLwA7LKm
 eFJj3Iu9Eym8QUIIsBaBFGD_ySH.GFIF9ArVMIpAJTktcz0Ww3JjXJW1RgyzEiGl5pWiY45PLA6v
 DfZ5x4YY_x_LPS1ruNHUNow901AU9MayFHnaOi6sMuKGBTFaYW8U41fvYwPlbldt.bQApXG37Ac4
 AFqytJbH0d_p5U86f_4OFmtg3JbVTfop6yJDAqHUycmb1s440xzMUyMLMizgeJ9K2HITB53uJG.F
 2rkfl.LfjO5xwMyIGLJ7nhObB306XP0snrA0x5W2u6OS2Fi42Z5qEyoR.QoyzxD9cXqQitqXHUv4
 QbiQHo3.ESfy1LEmFI3TSzOUSb92_z3VSEN0rUi38TzL7QvpI7dWDpb1OGeLGcyL1Hc0ALUFPjPZ
 YgwLc9rnAc7BHPJF_xYUXe6jsP.0GxbyCgLRn2ukLnh95pcyZf0hVPkfISSaJjTIgjWAMIPHHHmR
 8qqDaMKuoFvz5EOdxdAIoBi2hlZaV_kSO5pME2uwS8rEqYZVOjgE5r8s8doKGaLWdB0b8YgiMHiR
 _xXiA5_WgxwtT5prQDCDwikRt7wiJTUdcwvrTJ6L_rBCZRdha019mGkWQVfNeWC97G3fsZLy15UV
 B6fN8eVnSVD68_aJB7qWiK.iShqWki3S7Z0dwT5AesMS_YHXaio_LlMxTG7APOuistEg0d_b_pem
 R0ZioIbiOua6ayjOClTwo6pmJZEjEaGuKEumovpyXVXTrX9sjn8rw0zz3vOczgnu46AJvxckFfDT
 HTH4X7DMhziJZNLaXJy79O4J5ael9bBi0kwKQBBUCcqrDDO6HFs2amWVgU5iO7DOK_nszLXvpDKv
 1M6drMW3ygDioJNZnyUgw59yMrPku89yde0v3pZE4rDnhZOtO2Zl1AoRk3x7slfsor08QQVQ4Qwd
 f2J8OZgAAWQoOoKUODxlibCx99tQAqALJrKYheAy2q9dJHTESODo55fW6uNiMegHeuPjZE4CbWIO
 Gyr4Qz6cHGQi5CVlUDNAl0_FaDFi_zP_j12WvteGVlmYZoafi.AtNenhE977kmVT1KCZrtrJp9jI
 8EGLuySHX5zGZ.HoVscFMqD0CU_WvPCf6NEPxQhHnl9mfIOtaqqGv9lN1L4PDuVziPFFZsbpHp3C
 9s0PR9pytbr7CNEn6uTRxgM4KgalyWA_nam4cm4uXvAlyNCxjIgOUDts6JOQpbIQwVlnnEFoDN8v
 ytxOdCKrWf7do8TdTyg34_hxMF4cexKgkF4LHZAt5uPlkf9OG87TIxEVjNXvYmaeQs3bpbut82Xt
 JsHHTRa8TFHldxY_Ffc9lYMs8OsjrooyVnk78O54pkefA94xe7GBRpvArWws-
X-Sonic-MF: <astrajoan@yahoo.com>
X-Sonic-ID: 70d7289b-157c-408e-834b-fbc51a36cb59
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.gq1.yahoo.com with HTTP; Sun, 16 Jul 2023 04:34:18 +0000
Received: by hermes--production-gq1-5748b5bccb-rvdbn (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 385ae95fdc289aa36e0804078cb0f38f;
          Sun, 16 Jul 2023 04:34:14 +0000 (UTC)
From: Ziqi Zhao <astrajoan@yahoo.com>
To: syzbot+4fad2e57beb6397ab2fc@syzkaller.appspotmail.com
Date: Sat, 15 Jul 2023 21:34:11 -0700
Message-Id: <20230716043411.4950-1-astrajoan@yahoo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <000000000000ea931b05fe57aa62@google.com>
References: <000000000000ea931b05fe57aa62@google.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C56813EC04
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[98.137.68.84:from];
	DMARC_POLICY_ALLOW(-0.50)[yahoo.com,reject];
	R_SPF_ALLOW(-0.20)[+ptr:yahoo.com];
	R_DKIM_ALLOW(-0.20)[yahoo.com:s=s2048];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sonic306-21.consmr.mail.gq1.yahoo.com:helo,sonic306-21.consmr.mail.gq1.yahoo.com:rdns,appspotmail.com:email];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,ffwll.ch,lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,linux.intel.com,kernel.org,linaro.org,googlegroups.com,suse.de,linuxfoundation.org,yahoo.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[98.137.68.84:from];
	TAGGED_RCPT(0.00)[4fad2e57beb6397ab2fc];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[yahoo.com:+];
	FREEMAIL_FROM(0.00)[yahoo.com];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:36647, ipnet:98.137.64.0/20, country:US];
	FREEMAIL_ENVFROM(0.00)[yahoo.com];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: GRUMWEW2AZR6YWEL3BSO7W2C5DQLZ37C
X-Message-ID-Hash: GRUMWEW2AZR6YWEL3BSO7W2C5DQLZ37C
X-MailFrom: astrajoan@yahoo.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: christian.koenig@amd.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, glider@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, tzimmermann@suse.de, skhan@linuxfoundation.org, ivan.orlov0322@gmail.com, Ziqi Zhao <astrajoan@yahoo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/crtc: Fix uninit-value bug in drm_mode_setcrtc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GRUMWEW2AZR6YWEL3BSO7W2C5DQLZ37C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The connector_set contains uninitialized values when allocated with
kmalloc_array. However, in the "out" branch, the logic assumes that any
element in connector_set would be equal to NULL if failed to
initialize, which causes the bug reported by Syzbot. The fix is to use
an extra variable to keep track of how many connectors are initialized
indeed, and use that variable to decrease any refcounts in the "out"
branch.

#syz test: https://github.com/google/kmsan.git master

Reported-by: syzbot+4fad2e57beb6397ab2fc@syzkaller.appspotmail.com
Signed-off-by: Ziqi Zhao <astrajoan@yahoo.com>
---
 drivers/gpu/drm/drm_crtc.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_crtc.c b/drivers/gpu/drm/drm_crtc.c
index df9bf3c9206e..d718c17ab1e9 100644
--- a/drivers/gpu/drm/drm_crtc.c
+++ b/drivers/gpu/drm/drm_crtc.c
@@ -715,8 +715,7 @@ int drm_mode_setcrtc(struct drm_device *dev, void *data,
 	struct drm_mode_set set;
 	uint32_t __user *set_connectors_ptr;
 	struct drm_modeset_acquire_ctx ctx;
-	int ret;
-	int i;
+	int ret, i, num_connectors;
 
 	if (!drm_core_check_feature(dev, DRIVER_MODESET))
 		return -EOPNOTSUPP;
@@ -851,6 +850,7 @@ int drm_mode_setcrtc(struct drm_device *dev, void *data,
 			goto out;
 		}
 
+		num_connectors = 0;
 		for (i = 0; i < crtc_req->count_connectors; i++) {
 			connector_set[i] = NULL;
 			set_connectors_ptr = (uint32_t __user *)(unsigned long)crtc_req->set_connectors_ptr;
@@ -871,6 +871,7 @@ int drm_mode_setcrtc(struct drm_device *dev, void *data,
 					connector->name);
 
 			connector_set[i] = connector;
+			num_connectors++;
 		}
 	}
 
@@ -879,7 +880,7 @@ int drm_mode_setcrtc(struct drm_device *dev, void *data,
 	set.y = crtc_req->y;
 	set.mode = mode;
 	set.connectors = connector_set;
-	set.num_connectors = crtc_req->count_connectors;
+	set.num_connectors = num_connectors;
 	set.fb = fb;
 
 	if (drm_drv_uses_atomic_modeset(dev))
@@ -892,7 +893,7 @@ int drm_mode_setcrtc(struct drm_device *dev, void *data,
 		drm_framebuffer_put(fb);
 
 	if (connector_set) {
-		for (i = 0; i < crtc_req->count_connectors; i++) {
+		for (i = 0; i < num_connectors; i++) {
 			if (connector_set[i])
 				drm_connector_put(connector_set[i]);
 		}
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
