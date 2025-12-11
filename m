Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AC31BCB5CF7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:24:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 754C53F91F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:24:28 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id 54B323F91F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="NekB/yNT";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so313855e9.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455850; x=1766060650; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0a67G2H0qIRONtFJczR9cwq/2mKRXEXcVict8Y14Xe8=;
        b=NekB/yNTnP2gYg3bzO0FCJB1MDOKjW4gmFZZGO4S6lCdtEuHEx7tdhxl8Y8NfCam6p
         Xmxf3i7CMLnWfqbWQ9JZbVou7N5fUfv8tb8gIKw83oTGAiOXBf+lt1pDkvaxmMbUR7Gh
         L9rnPJSaVYLa5lWNUMTLxNLfVKCmcOtsYlMhBnPycVkjTkxRpPFuuNYpAP2KwO1MJVaD
         SbGQJYk6NaeJnwId6cpAvLRtUOt1exr4XOo0dRzUJCOcyaDgfk2rE19SotCsZMDdIDpe
         y4IKpF8U4rRnqVUM8YKgllYFmjWSENoFeCTo8wdzZ4y6gg55qZB1GXvnjUHaTgo0FHJx
         WyGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455850; x=1766060650;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0a67G2H0qIRONtFJczR9cwq/2mKRXEXcVict8Y14Xe8=;
        b=pToyYm/U6v0kN4ST6hSBSNrbBxfOjVFXyXsB1o62anCCF9zz5/CbIgWpIQCnAffsRj
         PZe/bwt+GyJRp9MByga3IigBf9+HgAjqo/4YW7W9+Eg0e+a7A6PuoNO53hhDwXf0dBnk
         VLL/4cM6YlD7xF32YsusLhwEDBIs6APAFUi3pCMK0hjv6zhBFvGT4YRNrqLD3J8IFuZA
         /0fN4UVrMRKP3AZjSox9sg5PHhSyTDy8iNmOLdgd9UGLuUDydIc3O5NDIOH0j/MWRgQd
         nxSdAQkFB7ImF3idR0rZNYoQAuRGispcNK1G80wIKOVcfSNJGuBE7UY/Qan2zYW9ERXP
         Rhmg==
X-Forwarded-Encrypted: i=1; AJvYcCXn0ygr9kY+tT9C1WtgweQrEnA2imZuch+LJtmLaiOdl7hyQP7YqRUM1GY3Adsh7pz4z1PdCTHnifRgJUjD@lists.linaro.org
X-Gm-Message-State: AOJu0Yz77eWgIeXjRu6zVxjpB9Hdb0K5teEmIIX25WVrK1v93DAIEty6
	txRHcwtCTdxNx+EEuL62Ii89/Wbz1Kxw5f1Oq/broJLaXFkyeH2FJQWU
X-Gm-Gg: AY/fxX7bGICm0Pq4EEpBBxpSDpV3fGOWxOTOWzLrYfEC0Mtrxnp6hKbZAF1TDfw/A4e
	/7eH0Tur4u0IwtuATHR0ruTWNRls+aQMOaiY0amcjVEHsdVpEMf5/9vNyz8czHHZqYCatvQPTUw
	Uh5mIRgYPlZVm9TnwQWUEM3cwt1+3WLv+dF4PCRjZjbFTS9cTfA8UdUdDUzpThLJJ6SI+hTFnci
	Q0CncFA5X4aRdteWxpVUfe/3ExqE8f59MSH5B6x4g3qqd3tsl4FOgmfJDuqiRS645sDSkkAGhXU
	Nt26bko0/vLgcu1Rg7trtnfEq8F0QBBJNgVhWUqgP8zW4Z/t5JyAH3bT2twc1w8VwE3VWXEP60p
	7xFASABxzpAlU8DVI/c2BNB/pOlXoIYCUmDz/KfU3u7YgF60BNu/ImURGCeiecLb8R6fMWPfDNM
	FJtXLEza8us3WiadS5Igye01ag
X-Google-Smtp-Source: AGHT+IEFgPOeyP7yAC4u1S1JuH/V/ecALw9TF3dmS9ERTxQfeJYX547HL8h47JkLlhjOXMBl1Da0rA==
X-Received: by 2002:a05:600c:630d:b0:477:641a:1402 with SMTP id 5b1f17b1804b1-47a8376e2abmr59660595e9.4.1765455850042;
        Thu, 11 Dec 2025 04:24:10 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:09 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:31 +0100
Message-ID: <20251211122407.1709-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.72 / 15.00];
	BAYES_HAM(-2.94)[99.73%];
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
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.46:from];
	BLOCKLISTDE_FAIL(0.00)[2a00:e180:152a:9f00:dc26:feac:12f7:4088:server fail];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 54B323F91F
X-Spamd-Bar: --
Message-ID-Hash: SR5DOJWBYF6CVLZTYCHDF625P57MMIR2
X-Message-ID-Hash: SR5DOJWBYF6CVLZTYCHDF625P57MMIR2
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Independence for dma_fences! v4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SR5DOJWBYF6CVLZTYCHDF625P57MMIR2/>
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
test. This one should probably go upstream independent of this set.
The second drops the mock_fence as well and tests the new RCU and inline
spinlock functionality.

Especially the first patch still needs a Reviewed-by, apart from that I
think I've addressed all review comments.

The plan is to push the core DMA-buf changes to drm-misc-next and then the
driver specific changes through the driver channels as approprite.

Please review and comment,
Christian.


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
