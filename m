Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BDDD3C648
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 11:57:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B955D3F70D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 10:57:05 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id B9FE93F70D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 10:56:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="Q9gPacV/";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4801c314c84so32739295e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 02:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768906619; x=1769511419; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dEORR3284U70dvlcfkxCpvGm9I9oOaxPh+wqNvOupwk=;
        b=Q9gPacV/cfRtOY5mwP+OzFLbpiXzjPes+MPKsnHC8RfTK25TwNnfgVBR6Wdl89RmqR
         D0tc0mukUMfWv1lxDnnRvoZV9xVOopLvLQCqEsTRoABaGxjS7xXF1MPnwwc125EuGsEU
         pauUYeh3cKqe2V/KxvURVDUsIqQLlLMnKnxNSHzLSVWIUClxF+cj5p36y0J8U1p762fF
         36tNnGIgHe0a0I9sv53rFrzcrvmRf5R1PKwQWp1HywwuQaAf2nrep+Ihit/JWLHQSzpc
         UCmNiaLJ4DsgqQR1GStqHtqK9PzYK1I4acEWWJJdJniuVur/LW7m2nV7HS8GVtBODvQm
         ZdVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768906619; x=1769511419;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dEORR3284U70dvlcfkxCpvGm9I9oOaxPh+wqNvOupwk=;
        b=bApTml6OllTfMTLe0Nf9AsVyBGRaBDPIdLBLxbrVt/BK2wDuPRSwT5lGCZw9Qsn72P
         IHRtlKionqOEgp/5oOpGq5TR+yrVqKMw1Pt1mYYAKWjI5hfQfvgJqJwBwDEV4JGCGSMa
         iPe1xSNuV2ptSVmQTgOQPPkXilY0hWZ0KdZdoHpd734FlFd6d9UCZ5cE5DpSXVqqWTeN
         QqxX0lo6oKizezHjL6qACqnmIKe+O8dIN1UqzuUX5VsjkX4o4HNINba4hm2uGHLRseqA
         XYRv4tXLAYeJtmc1PqWMZxj3BbSe0lMvJvcfL62CbaS9LaMXOGtY0lYU1XIWNG+WVrWz
         4nHA==
X-Forwarded-Encrypted: i=1; AJvYcCVdwC0ogJS7xjGLVPwah/kZv0xWaugxTLfYxWRe3vaAxYeR6j+2m7fqgrLIz9qIWowTryAyyh5g14y3TbbJ@lists.linaro.org
X-Gm-Message-State: AOJu0YxxLtTAyYz/MEp8x4AyriVk7uT/DsfgJJZYxgoD5GbAlf0DrlIK
	/RgVpigPOtX+RMBe3jq5Wza9h99JTGlq94QKY1UEFHgJSkuHnea8degl
X-Gm-Gg: AY/fxX64ga9IotBHuqwBGKTuzNnAT1HbDGV5nKsVA9nmky9A7eeQ+lmM+2VFiRduqMY
	T6QpUylSA2+rwq6IAhHN41UiUQ7Wn83ZNnzzHzKnK/rfXAdNGAHvUeW21z20e0MCkTGYUXt9KlK
	oRFRUuBZUx/jzrJiBbMqdw91+9ZbVVAGdf/8HBrrmj5iUQVjlOotSmbZWPlQn5NP1fVyB+Ypelg
	NLLQbT2mX/YhdBpk3kYbwneU8aEkHWJn88dHxR0OYAh5He70QIo6pDedBv7bhH94zYI7ofWuRlX
	pxRTigEBt/GBboPTZ0ZNSvk5f977mD3PeYBhkQxgnXuY5MCTvpe6zb/f+Ocbn5VbjQY9PMkZFlK
	W23mAtFq8fmffsdgCwCu7EwBK7KVQj68SwVk8r46qU1u1vDkDYstK3y/tIB35kqcjm48F1HXfmU
	MSoR6QYz1gZCWNtJA4gbIQFWW5
X-Received: by 2002:a05:600c:c178:b0:477:a977:b8c5 with SMTP id 5b1f17b1804b1-4801e34cd0emr204143915e9.31.1768906618439;
        Tue, 20 Jan 2026 02:56:58 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1563:d000:1067:f6c4:3bf8:ea8a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe67780sm99418105e9.16.2026.01.20.02.56.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 02:56:57 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 20 Jan 2026 11:54:39 +0100
Message-ID: <20260120105655.7134-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: B9FE93F70D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.71 / 15.00];
	BAYES_HAM(-2.93)[99.69%];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[2a00:e180:1563:d000:1067:f6c4:3bf8:ea8a:received,209.85.128.50:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: AWWJXVWXCMTST7IRISW5QMQKZANI5S6V
X-Message-ID-Hash: AWWJXVWXCMTST7IRISW5QMQKZANI5S6V
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Independence for dma_fences! v6
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AWWJXVWXCMTST7IRISW5QMQKZANI5S6V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi everyone,

dma_fences have ever lived under the tyranny dictated by the module
lifetime of their issuer, leading to crashes should anybody still holding
a reference to a dma_fence when the module of the issuer was unloaded.

The basic problem is that when buffer are shared between drivers
dma_fence objects can leak into external drivers and stay there even
after they are signaled. The dma_resv object for example only lazy releases
dma_fences.

So what happens is that when the module who originally created the dma_fence
unloads the dma_fence_ops function table becomes unavailable as well and so
any attempt to release the fence crashes the system.

Previously various approaches have been discussed, including changing the
locking semantics of the dma_fence callbacks (by me) as well as using the
drm scheduler as intermediate layer (by Sima) to disconnect dma_fences
from their actual users, but none of them are actually solving all problems.

Tvrtko did some really nice prerequisite work by protecting the returned
strings of the dma_fence_ops by RCU. This way dma_fence creators where
able to just wait for an RCU grace period after fence signaling before
they could be save to free those data structures.

Now this patch set here goes a step further and protects the whole
dma_fence_ops structure by RCU, so that after the fence signals the
pointer to the dma_fence_ops is set to NULL when there is no wait nor
release callback given. All functionality which use the dma_fence_ops
reference are put inside an RCU critical section, except for the
deprecated issuer specific wait and of course the optional release
callback.

Additional to the RCU changes the lock protecting the dma_fence state
previously had to be allocated external. This set here now changes the
functionality to make that external lock optional and allows dma_fences
to use an inline lock and be self contained.

v4:

Rebases the whole set on upstream changes, especially the cleanup
from Philip in patch "drm/amdgpu: independence for the amdkfd_fence!".

Adding two patches which brings the DMA-fence self tests up to date.
The first selftest changes removes the mock_wait and so actually starts
testing the default behavior instead of some hacky implementation in the
test. This one got upstreamed independent of this set.
The second drops the mock_fence as well and tests the new RCU and inline
spinlock functionality.

v5:

Rebase on top of drm-misc-next instead of drm-tip, leave out all driver
changes for now since those should go through the driver specific paths
anyway.

Address a few more review comments, especially some rebase mess and
typos. And finally fix one more bug found by AMDs CI system.

v6:

Minor style changes, re-ordered patch #1, dropped the scheduler fence
change for now

Please review and comment,
Christian.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
