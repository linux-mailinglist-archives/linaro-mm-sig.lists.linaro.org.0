Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F1FC74B60
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 16:00:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 281523F99B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 15:00:44 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id D928A3F905
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 15:00:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="D/Mbivdp";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.47 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-64198771a9bso1749548a12.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 07:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763650822; x=1764255622; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2KulbU76WPY3aQSimSbq2/pFs1MWqHx/AZnO5bV++60=;
        b=D/MbivdpWSpN/1Ex8PrxOglmrFufEnMRJhL8LdiTlmrW6qwTw0yBPL/PCkkcdUb3sK
         UPngLt3AO37B5dhWDgPX1HsW9oyz86eXLHt0muc4/2TKzOBLjbf7nxeBBvjTdu1ltyVm
         UB7RSNb1QzdSH/6djMFzBE1EkSh4cF3hElaGlPehOtuW8rZJwgWhehboyt3z2vRQw3K/
         C/CLVMRTgagvTeYxbufOhciDQwcIo1zGGvXJA1VYOUnlphMuV3jVdFUSkmO2W2saJ1F5
         doCZ4ox3aEcWbJskz369lq47plyHSk2MBUWdKshXpNwumuCv+PkOtq1CiK2YSfHKUDN4
         bMJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763650822; x=1764255622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2KulbU76WPY3aQSimSbq2/pFs1MWqHx/AZnO5bV++60=;
        b=TMdAx29n3Mp61JlOu0Iax6YZCs1sCk/JQvGu4bSA1q1JAGLdRHviuySh7CydcLlGg6
         rm6c/gtWK9s0mzpK9jCKx0QdbrO3r9MvcvGld/RPt2zhtu0HW19Gj4ZPtgIHzAIvZL9t
         On2IZGIsXsMfG/xxTVaWw+RUzUVUEml8Qr73URfcYRCuTEU5RSB66bYCvp2q4FU2/sth
         VrwInZhEmAvNWnRUzDVns7Ltw59JqMpPPTkqIcDE8k0pmXyCaPlkWi2vNir31UaMIZ5w
         /Q4yfBO2o41nQ75IJzhc1u2+0zbtUemm9t30YVXsdh8cxeVH9l0Z6SqANkdIsgGILp8V
         t5Qw==
X-Gm-Message-State: AOJu0YzI01xjo4+8dO+zj/WCudksQdo9ljCEM5zq8yGGbnm2MlUokfyq
	z9AbF6pkhUi+x4T83qwhOulJHAsNR7qXsxAwalsO/fr72Ld8C7NqXfBI
X-Gm-Gg: ASbGncsxu4Tuv2pORE5YCO5IDhJycYSnh36Xa6ygPR66q8OZY0v1/IIKMKr6sieEHC5
	xK/kFialci4zILxBenqJDz9txeWPg2fz9eko+9/hNCdNBug+f5lOQyQm4JSmu1l/8/GjFin/1bn
	EWfGHwNz6r465iKeeMHtY3FkB1zKImU+G8R5qSwy7IKpvGR1H/FR6GKspxZF8eUuf7TYDT/I5GK
	k+/cihzv44KF9PjKfOoLWSWuxDHZQ6TX21rI94HLCXNxa6jj7mGIJ2knZyUioV86F/024v8hyu1
	e300J+hFkVHjiWCSBzuGEQmsbPyp7c336pWE2rXZC54SoDMpWn4nuTCsodD2pAHRPCXsX0ONwBi
	VuxKYXRTkyhW0ijSPEPOJTxKNDvP9TWD7RsG8+5vcJ0Cl/LTVMkyE54OHQgbhMT2j7jEIiCSv0g
	+DNgD+A4Ubcrv76lOJUH3Jo/7R0dKB4/K0pHA=
X-Google-Smtp-Source: AGHT+IEZsBC00q7J0sBdOY35QgfeOcewKrhPiIlzGhi9NFGIdO9JdWh4JaOQI9jpjPySO0wsJYu58Q==
X-Received: by 2002:a05:6402:40c5:b0:640:a356:e796 with SMTP id 4fb4d7f45d1cf-6453819467cmr2516602a12.5.1763650821404;
        Thu, 20 Nov 2025 07:00:21 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:154c:c900:7aba:c4b7:a402:3cd2])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6453645f2easm2205878a12.33.2025.11.20.07.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 07:00:20 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@kernel.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	faith@gfxstrand.net,
	sumit.semwal@linaro.org
Date: Thu, 20 Nov 2025 15:41:06 +0100
Message-ID: <20251120150018.27385-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.19 / 15.00];
	BAYES_HAM(-2.24)[96.42%];
	R_MIXED_CHARSET(0.56)[subject];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.47:from];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D928A3F905
X-Spamd-Bar: --
Message-ID-Hash: EGZHRSWJENYJKCCHQ3LEJJDNLECLPTHG
X-Message-ID-Hash: EGZHRSWJENYJKCCHQ3LEJJDNLECLPTHG
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Reasonable maximum signaling timeout for dma_fences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EGZHRSWJENYJKCCHQ3LEJJDNLECLPTHG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi everybody,

we have documented here https://www.kernel.org/doc/html/latest/driver-api/dma-buf.html#dma-fence-cross-driver-contract that dma_fence objects must signal in a reasonable amount of time, but at the same time note that drivers might have a different idea of what reasonable means.

Recently I realized that this is actually not a good idea. Background is that the wall clock timeout means that for example the OOM killer might actually wait for this timeout to be able to terminate a process and reclaim the memory used. And this is just an example of how general kernel features might depend on that.

Some drivers and fence implementations used 10 seconds and that raised complains by end users. So at least amdgpu recently switched to 2 second which triggered an internal discussion about it.

This patch set here now adds a define to the dma_fence header which gives 2 seconds as reasonable amount of time. SW-sync is modified to always taint the kernel (since it doesn't has a timeout), VGEM is switched over to the new define and the scheduler gets a warning and taints the kernel if a driver uses a timeout longer than that.

I have not much intention of actually committing the patches (maybe except the SW-sync one), but question is if 2 seconds are reasonable?

Regards,
Christian.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
