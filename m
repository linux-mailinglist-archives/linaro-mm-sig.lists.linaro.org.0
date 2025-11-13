Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCCEC580E8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:53:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9ABCB3F840
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:53:53 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id C84A63F6C7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=PNRvgtb2;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.47 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-641977dc00fso1372270a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045615; x=1763650415; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=2KuY4uk9dx+SEK4R72zOc8sDn7Cu3S//j0y0j/oIKkY=;
        b=PNRvgtb2mNk3uiUOg06tOjfRRYbgAG3+NkLwJJ+aqz5uw9KrPkSsLHJzS34in94hwt
         gtiKEcN++0m4fgyF+10qS6ejdDI87XbQW5CsoGF8LhFUTtXrOni7r0NQ5+P+LTOY+Zx0
         bMMLWkeU0j/vc4dKacRblGGDhfxFbk7oJcl+39VPD2tcmivq8emVjfDfjnnPy57IbmWN
         tYGFx1NP45wpptXRY0GG3Yr8uOIBFU2xYRytDvMtngy6sYh3dXPEWWV4nvVOtIDCrets
         iFl9l8Z/9GtLN69WOcyRHR/m6AwrH4hZv77nJwR5sLfmPkDCiR2cerwoG0tJ1pKbH5HW
         Oyyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045615; x=1763650415;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2KuY4uk9dx+SEK4R72zOc8sDn7Cu3S//j0y0j/oIKkY=;
        b=Zah+oxzWoWuETJh3/l8uA6dEJHTNESL7oBnGMwBmGRxO98f9vIztScFyj1w0M3S6mK
         3Gaa7XDD70mZ5AHuNb040uKJCLpY+qgW3EIz5FGr588Q6cQiKiFNbXQ+WNQ2+MZNxFJQ
         UpLFbxEgEWrG5/jaudeTW1yeSjuFaBjz6MtwB6/EZQ+AXoJi4pXVWthjB5H01UXlZtEk
         o0FgDe8J7Eg93eKtdzaOoszdCAL9DF1vUiGLFwgZfEeIYthSkyCOhn0QedzNtsf5oTH6
         iK9XhS4Ao6m93vt38kjyuAFl3HemShAt7MHjJAEhL58YpXRkfFHQQEi6zDMW0uf2o4Ag
         O7AA==
X-Forwarded-Encrypted: i=1; AJvYcCWEtUwBYX4dVjnacfJJdnu8aGXvhQxy55K7F/+pSRaJfSrDYwhX/WJnZd1RT/+4odYL6RsJjr0YnOCDNxC3@lists.linaro.org
X-Gm-Message-State: AOJu0Yxx18FYP9coo/y72vBPX+I7avjhCakX8i5DeN60Rj+QV2QR9mKO
	Q2NpMJ49xWoYYH0azI6QCc+3lht2m2ykh/rr42tSN006qNb5bdstiEzv
X-Gm-Gg: ASbGncuzY94sqEh11KKPbrhw/VObeiKI/FtKgcCb+28ROPeVFfC4dmg6tphoUf3b6BF
	2I5yQ4oO+Wn+4TpMnA+UMMG4lUyxxyoQ9pOQdVuSoecCTSXGI9SmOsQc1ZO48lHNqX8BFyML/TP
	VkykyzJUQjijb98mARjeFRySxljBVHOTU8+iNEAZGTlPwnNOJjJXgIslC61s0EdEZkWVUMV0cHF
	XqJvkCDjhdyRCPxRI1ZfoV7iC48wT0urBy7kb3SYjM7xM2h7VNK7fb3Ml3/kn/kGNdr7oD48+Iu
	8iv/1d/QNvqIQukkSnafaC3soIi00uLVgTTLQQam0OS7LtwKdkbxg9foNK746WAkDvBxi0/YWjF
	L6Q3wHx1md1fqBgswPVcAZr7ACuPiYOBOTq0voI8UWuysJX/uAd23wpHn0kDMQDPKpfkCPo0Gex
	FMmop9R0cse3M=
X-Google-Smtp-Source: AGHT+IE17n8JQmz8ZzOanQPyu0ficEa1gOkY5xc57eixhccSjQy8+v1v9r9GRlWtfqrRxGWCG8nk1w==
X-Received: by 2002:a17:906:f597:b0:b04:32ff:5d3a with SMTP id a640c23a62f3a-b73317a7930mr732977566b.0.1763045614394;
        Thu, 13 Nov 2025 06:53:34 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:33 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 13 Nov 2025 15:51:37 +0100
Message-ID: <20251113145332.16805-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C84A63F6C7
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-2.72)[98.77%];
	R_MIXED_CHARSET(0.71)[subject];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.47:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: TKKKZYGOMOX3BSKHPI7AXY6GGSLIKQOW
X-Message-ID-Hash: TKKKZYGOMOX3BSKHPI7AXY6GGSLIKQOW
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Independence for dma_fences! v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TKKKZYGOMOX3BSKHPI7AXY6GGSLIKQOW/>
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

This patch set addressed all previous code review comments and is based
on drm-tip, includes my changes for amdgpu as well as Mathew's patches for XE.

Going to push the core DMA-buf changes to drm-misc-next as soon as I get
the appropriate rb. The driver specific changes can go upstream through
the driver channels as necessary.

Please review and comment,
Christian.


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
