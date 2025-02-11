Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BBDA31172
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Feb 2025 17:32:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 81EE842501
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Feb 2025 16:31:43 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id 8D48244893
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Feb 2025 16:31:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Y38kv+zH;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.43 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5de5e3729ecso6647346a12.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Feb 2025 08:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739291472; x=1739896272; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ieNG5550teoOm9evurNGAIt7IDUR7q2jLsMj9bSrcqg=;
        b=Y38kv+zHV3KcXLaAF45q1SIoBxYJn7DaSAETXoFEgvOwKMn52zn7WYlRzzqbKcHqE2
         +6S16MHqqWZFH3chDEKaL3p48A6Lx+HSX9rnneIpjOcraenSPA3R4UUN9j2cpPHXL7Kn
         7sfna76gxUlbCRYJtbgiVhEfUa+qkTU4lGixykjvVRioC2zOE7SOKpLRPD0hZYuGcaao
         n82jmiQpc6U4pHGPDhoa2SH8UL3+/k7XOR9BTSQr2M+uwsOlTr4QuFzeHbIg4OZzy/hj
         G+hygbeDdewpoDPlibl1TTQlDII3knugM6LymN5kgFrldR7nNW+M+kewH6EgEYzBicQj
         OuBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739291472; x=1739896272;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ieNG5550teoOm9evurNGAIt7IDUR7q2jLsMj9bSrcqg=;
        b=kykEHh8ewBSAuphYySoutjwzoj9QrP7hpPsyq13n2HYWVOy8Pg+M2s9ndigYKuA+zt
         bxSHRyw4XXtAPWQiXqsHP7/ED0iG7oC89hcSHlzqXJidW8GvVxk415y+55bhjnq+EiZ+
         4kYCTGjKp4Ivv+t7C+aRwMkfjXipF6ALYXoXaSki0lAhYRGb9NKHsA82bP9cdp2p8SEX
         5e+Fsvos4RGv5dtqWkcHFVwIxBJ/ACvrA1oqQ1070tVcC835SyfV5jSgd5+buVHxnuYF
         xKKKUKU1ENpR1/t6H/Et7SVwscA4X5pa6X/jNfLCgqgd36LxelU+RWFUL3tZNDCnLV3s
         Tztg==
X-Forwarded-Encrypted: i=1; AJvYcCVZBoDdPUJXc4DCf+CRG+2PkYIJLSSjEDDzpAg8kkOmGybJX7b7ZrJ3dH/BBiZxwDtTZHmz73l64Ilpah26@lists.linaro.org
X-Gm-Message-State: AOJu0YzLb9QZ9HC/xUap9swA4kE9HYQSdDlrae0KG7tvrQyXnKJ9+2Qx
	rH7hhzb3TH/UzlCwxEhWQoaLzUR/GnuRVVzAmFSVRqeTL/mATvOt
X-Gm-Gg: ASbGnct6nkkuDPqOh/p/RgCHwgmYIkqqC8tn8CWtIf1y9vl9lw5DG9twPpVN8GZ6v5+
	aI8fdXQ0R0Kck9MfODn6mbRJ69lir54dAaWYR/2S5Z33OuYtKLiwRR8kt5Xz21/N2S6J5o5kZmZ
	wXJiEM/RjcNjMCctD9JAKl+0uDxVjSRyJ6J/AJyvDBw3QUnP0rsrwQop/wbItCe32QTXMqlJFE+
	EmBfo4pK6Puby2zjnwGiTIVN60E+76rvQu0FD1qWTSvMt1fMyfDCEsfdfITxl2ULGLs761e2V0s
	x97GCUapl1RE0Vi8LnS+qJv1USTL
X-Google-Smtp-Source: AGHT+IF9zaAspOwQiSxv/7z5dzkqUR9J5A7ZqS/A+KKeBOQJtea2s4MufoRyeVuFVl7aKnQW5m4ZTQ==
X-Received: by 2002:a05:6402:2381:b0:5dc:1273:63fd with SMTP id 4fb4d7f45d1cf-5de9a4646eamr3656406a12.20.1739291472100;
        Tue, 11 Feb 2025 08:31:12 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:154a:1300:5b91:7670:e404:c65a])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf1b7ade9sm9838748a12.25.2025.02.11.08.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 08:31:11 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	tzimmermann@suse.de,
	simona@ffwll.ch,
	dmitry.osipenko@collabora.com,
	tvrtko.ursulin@igalia.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Tue, 11 Feb 2025 17:31:05 +0100
Message-Id: <20250211163109.12200-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8D48244893
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.05 / 15.00];
	BAYES_HAM(-1.01)[87.24%];
	R_MIXED_CHARSET(0.56)[subject];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.208.43:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_SPAM(0.00)[0.830];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.43:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
Message-ID-Hash: JX44QPOU57SXNJLYHSICI7W6D2TGKNU6
X-Message-ID-Hash: JX44QPOU57SXNJLYHSICI7W6D2TGKNU6
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Bunch of DMA-buf cleanup patches
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JX44QPOU57SXNJLYHSICI7W6D2TGKNU6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,

just a few DMA-buf cleanup patches. The first one is fixing an incorrect
documentation which has annoyed me for quite a while.

The rest basically just removes stuff we no longer need or which was
just added as abstraction which was never used.

Please review and/or voice objection if some of that is till needed for
something.

Regards,
Christian.


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
