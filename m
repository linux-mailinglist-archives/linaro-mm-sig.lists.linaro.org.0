Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJPLJ9sQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DDD411D1E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2464B44C70
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:39:54 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 6F7113F910
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Feb 2026 15:38:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=B8wajBkE;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.45) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48329eb96a7so13019155e9.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Feb 2026 07:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1770651491; x=1771256291; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jk99TzIHNfOaBko9b1E43IwPHNs+vzenJUms8qd4tnM=;
        b=B8wajBkEh5G3cPzSzevhIcAuQIHlW9t1ZA5iGBVRPP/KsJGyKA0Zsh9KYDa1ePYXqz
         VRk/0THl8lKYr1DiBhQMhBbG/sZQfOHfvcmJe8LjbhP+ZvsSKbEM0w3TdYRXB78lh4Pr
         OyHZLWFXMKkdyMibR2FxIUDsHwnlPHrnMW9hKe8FZRHSBDV1abnGFSq4YYXaYWHdOMXA
         BXNg8hS4FYy+jP3ADa4TcM0OpgX4BGgOaNvjvHEsJKJxaWVQuR8MXnVGpkb+wFThSrYM
         gra/2vNJtBQ9itUWpUjKsEbB0mWp9hoibXKQoruGeN3/ZsaGLBVzsBQVY95j4sRJz/6U
         /dGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770651491; x=1771256291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jk99TzIHNfOaBko9b1E43IwPHNs+vzenJUms8qd4tnM=;
        b=aVaSMXmMoCX/xljxu0F+J1iOvybngaRlTZgVcn/IvvxfWcM7LnB0YQMWnG3exXbsoy
         kI7x2tA6bwXo1rSHRAQU5A4d/wcXbSqy4hxal9OrTlSSReIYBojecfyrPJNOugSw7zGJ
         vqv9WMpmsbtW+DHPLXay7Pv08O7ts0Og/R4EY/Cj+r/A8LdtPeoF9nbqzKeDL4OfeCG+
         R04YlKBM9i6S+6kd9Biwygd8spUS754U77vLtmyyGBfQL0h9XNh4NhQuDYKx0CaMO7n/
         A2wSJ1J3bJ47wLOiaIgZpKVm1WwmKhIwO1xxa7pMn/IbyFP0P2ZG/N5jCAOsivTJyDAH
         /6Sw==
X-Forwarded-Encrypted: i=1; AJvYcCWd6erJw8qUxIandVoKp9kwnBVT+oQcEdxYIoPupZaHUYAHZAaCAGntinjqWYj3oC0ktLrwFJqstKx0iCC3@lists.linaro.org
X-Gm-Message-State: AOJu0YzuI8cGkAODl7zhVZNphbF/nM0cmMN8sRB4jcq11x/pSWMLCDIB
	7pQaOyg93qEQoV1d52nSz0U9bK1hy/pgIdmQmZXzxM5rxpRlpOh0ObEHIPvtOYJT1yI=
X-Gm-Gg: AZuq6aK9MNhqw5/IpUEGN1CwCbh+NmXw+Yiw7bSwXuuSc3CSE3KXTLkd+pH+ici1cgQ
	Os5sHQd5F3IFuEZvggPKGB1rRzUJNmkTS9dxhA8Ysj7+Ko+i6mcWjlAA3uGkABI49ox6vJlRUSf
	KiInf00yh7yV3U/v9s7eQ6Vj7onCmpvoXH9huThPFR6619j0gMNF2isE6//bAMq6Q3bgeehVoSF
	nL7tS2GOGAI4hWDSuiKe880DQA8I7y4L/vAcwUXbZhRvD0uhrWbJKBrqb0lsGk172YJxPBeHMIf
	gEoVrjg/aXrmb/2b3U2R69i6FvvIf9TAh9tQrgpKLx24cLdn9l9l3R2fF8cKc0rrhPSM5OU3FSZ
	D6OLmFBcmNyawrUSf+RWcv6j5vqHu2G+UbimEpCr5dFfxRHTaO3dlZz26mwaJtYvUiyNulybJd9
	AdCg==
X-Received: by 2002:a05:600c:6592:b0:47e:e7e5:ff32 with SMTP id 5b1f17b1804b1-483209c6dd4mr181313355e9.34.1770651491431;
        Mon, 09 Feb 2026 07:38:11 -0800 (PST)
Received: from localhost ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4376a78d796sm11560760f8f.20.2026.02.09.07.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 07:38:11 -0800 (PST)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Mon,  9 Feb 2026 16:38:05 +0100
Message-ID: <20260209153809.250835-2-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260209153809.250835-1-jiri@resnulli.us>
References: <20260209153809.250835-1-jiri@resnulli.us>
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OWKZK6VBHPDMVTUZRBV7YY3QUP3ZXVJC
X-Message-ID-Hash: OWKZK6VBHPDMVTUZRBV7YY3QUP3ZXVJC
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:09 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/5] dma-mapping: avoid random addr value print out on error path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OWKZK6VBHPDMVTUZRBV7YY3QUP3ZXVJC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.49 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[1585];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[resnulli.us];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	NEURAL_HAM(-0.00)[-0.808];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: 51DDD411D1E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jiri Pirko <jiri@nvidia.com>

dma_addr is unitialized in dma_direct_map_phys() when swiotlb is forced
and DMA_ATTR_MMIO is set which leads to random value print out in
warning. Fix that by just returning DMA_MAPPING_ERROR.

Fixes: e53d29f957b3 ("dma-mapping: convert dma_direct_*map_page to be phys_addr_t based")
Signed-off-by: Jiri Pirko <jiri@nvidia.com>
---
 kernel/dma/direct.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/dma/direct.h b/kernel/dma/direct.h
index da2fadf45bcd..62f0d9d0ba02 100644
--- a/kernel/dma/direct.h
+++ b/kernel/dma/direct.h
@@ -88,7 +88,7 @@ static inline dma_addr_t dma_direct_map_phys(struct device *dev,
 
 	if (is_swiotlb_force_bounce(dev)) {
 		if (attrs & DMA_ATTR_MMIO)
-			goto err_overflow;
+			return DMA_MAPPING_ERROR;
 
 		return swiotlb_map(dev, phys, size, dir, attrs);
 	}
-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
