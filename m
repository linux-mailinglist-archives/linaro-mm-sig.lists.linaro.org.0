Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5943B71480E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 May 2023 12:41:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F4C543CB0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 May 2023 10:41:05 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by lists.linaro.org (Postfix) with ESMTPS id C80CF3EEA4
	for <linaro-mm-sig@lists.linaro.org>; Sat, 27 May 2023 07:54:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=J1k3fPaQ;
	spf=pass (lists.linaro.org: domain of lm0963hack@gmail.com designates 209.85.210.176 as permitted sender) smtp.mailfrom=lm0963hack@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-64d28c9696cso337488b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 27 May 2023 00:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685174084; x=1687766084;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ps1IF/L3y0LuIXv1kuyXMXVV1V92IKkA4nkdR1TZzsU=;
        b=J1k3fPaQZMPaMfdKrnm1zm7gzhHU3qdmAEgC4wn/zWlP5HZ6JqC5OlOYRpBy+aPcQg
         yUhoygdEbaP/d6l50zsX+P2x/nCpG+WCQ3vo2jEYDG6kXl3wiY3GZCZeW+KK7JfJUpXb
         vglxbKZsZSapWDZ6FUSrA82OzrEKw49uNha6r3OrW2h+wK+WUgqPh8mybzRX0ER05svx
         YYA6tu4labf09OfctbtGzSUoFMvh+n05rb5TndVmhR89vfRWC7USJ3BZBiHfKfvK5I6A
         uDJ1Kg6CpMzxNxSyjL2LyjV+88Akn+4O1hOLrEvQDDmCoLXemg9Gg6AS8g50KFwbTkEl
         6+Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685174084; x=1687766084;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ps1IF/L3y0LuIXv1kuyXMXVV1V92IKkA4nkdR1TZzsU=;
        b=Dy667DxJd0LNsxA0G6hsyGgTT/Sa9TuoqNw4uj7XoFANattThLj50IXLLs2tp3dUmA
         NeKPF5OzNe5KHWthJV/ZsZ7bHrak3QOVEAMYfxsd5rs5qA1CoK++65kvDCQKBlZTXmPZ
         o61g33lvlhDyUxOFwAqav5o0ydZCsXErD6tEttXuH1DVkb6bAbgGpCO3hKAMPkTer25Q
         soyEkj2bjGyCjEam4u+l6WNe/knomsJ1s1j8gV2tB65PIf5AaGz4k0HGsnPxVZLR354y
         eivy+rIPHFnS6lITET53dyxHXkD7XsuZrKQ5b7x8rtAP60CrDQ/NheSCrXE+mWFuNSNB
         9hng==
X-Gm-Message-State: AC+VfDyqvuovyRu0HmSyDp7qc3BTa/Bqn8pxlHyhPubktvDtIhNTMZn/
	tJjqj3jShOnMAlEEHBgw7f0=
X-Google-Smtp-Source: ACHHUZ5Wl/x2AX2Bqkt5RQGo8lzJHVe2CTWpN35HVupnCmsS+crSB8FjThb8CWMDAlUiyAzTHgUY6Q==
X-Received: by 2002:a05:6a00:349b:b0:64d:41f1:7c87 with SMTP id cp27-20020a056a00349b00b0064d41f17c87mr5793226pfb.2.1685174083809;
        Sat, 27 May 2023 00:54:43 -0700 (PDT)
Received: from ubuntu.localdomain ([103.114.158.1])
        by smtp.gmail.com with ESMTPSA id v7-20020a63d547000000b0053f22b76cdcsm3770567pgi.82.2023.05.27.00.54.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 00:54:43 -0700 (PDT)
From: Min Li <lm0963hack@gmail.com>
To: alexander.deucher@amd.com
Date: Fri, 26 May 2023 20:37:53 +0800
Message-Id: <20230526123753.16160-1-lm0963hack@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[mail-pf1-f176.google.com:rdns,mail-pf1-f176.google.com:helo];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.966];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.210.176:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C80CF3EEA4
X-Spamd-Bar: --
X-MailFrom: lm0963hack@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BICX7BFJXRTXT3GKDF6LKRHTAF6BBHAM
X-Message-ID-Hash: BICX7BFJXRTXT3GKDF6LKRHTAF6BBHAM
X-Mailman-Approved-At: Mon, 29 May 2023 10:40:47 +0000
CC: christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/radeon: fix race condition UAF in radeon_gem_set_domain_ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BICX7BFJXRTXT3GKDF6LKRHTAF6BBHAM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Userspace can race to free the gobj(robj converted from), robj should not
be accessed again after drm_gem_object_put, otherwith it will result in
use-after-free.

Signed-off-by: Min Li <lm0963hack@gmail.com>
---
 drivers/gpu/drm/radeon/radeon_gem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/radeon/radeon_gem.c b/drivers/gpu/drm/radeon/radeon_gem.c
index bdc5af23f005..450c7cbdd28a 100644
--- a/drivers/gpu/drm/radeon/radeon_gem.c
+++ b/drivers/gpu/drm/radeon/radeon_gem.c
@@ -478,7 +478,7 @@ int radeon_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 
 	drm_gem_object_put(gobj);
 	up_read(&rdev->exclusive_lock);
-	r = radeon_gem_handle_lockup(robj->rdev, r);
+	r = radeon_gem_handle_lockup(rdev, r);
 	return r;
 }
 
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
