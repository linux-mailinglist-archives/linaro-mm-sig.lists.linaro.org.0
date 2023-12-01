Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6658B801790
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  2 Dec 2023 00:23:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D0CE43C2D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Dec 2023 23:23:11 +0000 (UTC)
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com [209.85.167.67])
	by lists.linaro.org (Postfix) with ESMTPS id 2D31840B17
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Dec 2023 23:23:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=ZqzYTYuQ;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.167.67 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lf1-f67.google.com with SMTP id 2adb3069b0e04-50bdebb1786so1043635e87.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Dec 2023 15:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701472980; x=1702077780; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/mPB8J9KOLgFvXqw1rydMIKNrEURsJRhisRvaGx5Qvo=;
        b=ZqzYTYuQTuRKTl5j5Kmg2byDP2RP44d1zLZXmeCoUBxID23rK04bJ+g9pTpAx9Z5Tg
         z3XAY8W8A+PFkwg5RQDDUOCe6EFjGLvhayzV+xz//qWOR1f4CuKiADMkx1zQM4awtBF7
         uDZqUGUiUiLpQMZUdxO0TYXZJ5KpiutI6PqH2f6odZSNshhzOpNw+bbzpm9o5ClHL/+n
         gkVFUtHPJAgng4cRuuwJ424v8cNmccxHxBSqQuAmYo+fRt+GiH4TYvCbee9+l6AC3Y6X
         iX2mcNwGsBZmPwvlI9T8h2eoQf52WAjpTCYJ6qw3gnnUlUX+2eQKAaKKSP4hP4O4H1b9
         nIag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701472980; x=1702077780;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/mPB8J9KOLgFvXqw1rydMIKNrEURsJRhisRvaGx5Qvo=;
        b=aNfYWcWYftGD8C2IClVIOtmKbV70mOD1z5vay8Lkd7ShOj8Tyj8aoNoZoawZasoDBN
         1EyWQbi2PeUqp43F3QuplGPVfaRVfXSlRPh5DSeeLgmkzk89JqRWPeC+iTIqSPrU2IaX
         ug6UI7uRVCXX4it0NSQDqJmhqLnwqe5EL9dQAoNyWHVtTbFIrkpBR/V+Hqu5Kq2QZf13
         hUBc8pPD25TqMqMDDq6NKGkbv6CGuGFk4ETbwftj57poL4+8SHof83dVqpLgZX1riZmp
         3s0LbWG9pRAerSQRHbnnEF7eve0SKpSf146oPopJRg2zV5pH8HkmlyQuNs7rbbGqLGup
         Vi0g==
X-Gm-Message-State: AOJu0Yz1z0fZo/9wLMBOQ7Glv7RKZG41FOxq4asI6zqiq4uCJChQJAvf
	qAmKYwJQYLFvJQf20Gc8xm6/hLl6
X-Google-Smtp-Source: AGHT+IEwZ3nkP64SLpV3NkvgH1lRsLPyZfl7SpQBWnCAVSDtZo0FcR829DhEkezYz+K6KxEhUMKjIw==
X-Received: by 2002:a05:6512:313c:b0:50b:c768:d347 with SMTP id p28-20020a056512313c00b0050bc768d347mr1292282lfd.18.1701472979687;
        Fri, 01 Dec 2023 15:22:59 -0800 (PST)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id k10-20020ac24f0a000000b0050bcb5b443dsm549662lfr.171.2023.12.01.15.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 15:22:59 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: dri-devel@lists.freedesktop.org,
	Rob Clark <robdclark@gmail.com>
Date: Sat,  2 Dec 2023 01:22:56 +0200
Message-ID: <170147278460.2064169.18443996473333750316.b4-ty@linaro.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230823215458.203366-1-robdclark@gmail.com>
References: <20230823215458.203366-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 2D31840B17
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.67:from];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lists.freedesktop.org,gmail.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,gmail.com,chromium.org,padovan.org,lists.linaro.org,vger.kernel.org,kernel.org];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YXZSFGJCEXTDXR65B66XC4ELZNP2GE73
X-Message-ID-Hash: YXZSFGJCEXTDXR65B66XC4ELZNP2GE73
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: freedreno@lists.freedesktop.org, Xaver Hugl <xaver.hugl@gmail.com>, Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-pm@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 0/3] dma-fence: Deadline awareness (uabi edition)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YXZSFGJCEXTDXR65B66XC4ELZNP2GE73/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Wed, 23 Aug 2023 14:54:53 -0700, Rob Clark wrote:
> This is a re-post of the remaining patches from:
> https://patchwork.freedesktop.org/series/114490/
> 
> Part of the hold-up of the remaining uabi patches was compositor
> support, but now an MR for kwin exists:
> 
>   https://invent.kde.org/plasma/kwin/-/merge_requests/4358
> 
> [...]

Applied to drm-misc-next, thanks!

[1/3] drm/syncobj: Add deadline support for syncobj waits
      commit: 8570c27932e132d2663e8120311891deb2a853de
[2/3] dma-buf/sync_file: Add SET_DEADLINE ioctl
      commit: 63ee44540205d993854f143a5ab1d7d9e63ffcf1
[3/3] dma-buf/sw_sync: Add fence deadline support
      commit: 70e67aaec2f4706df0006423eebca813b00f5840

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
