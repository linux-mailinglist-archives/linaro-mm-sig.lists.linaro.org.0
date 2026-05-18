Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBesLYPmCmqJ9AQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:14:27 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4400056A803
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:14:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2368A406B3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 10:14:26 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 9D2BA40475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 10:14:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=miowvMXi;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-488a8ca4aadso20029485e9.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 03:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779099252; x=1779704052; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HqBDj90Kc3B5RL3RITDRmt05U20tIBaa43CY99Xd9RQ=;
        b=miowvMXiv8Gev6dGiCS/Iby5RCo0CQ3Tryx2XKJxMwaP5HINHTlfihjQYgZTotZxdd
         V+6RDrEZMZQwzIJpb9btKDJvx/GfYszuCMQJt/xU71k671L7ewsCYAsjQTMDWeaUHh7M
         a4Xd7rv+/9jf+PFKiVkxeZ8K/06c/h9cdIkf7t9BGGeHfpKaOzWWfOd0Qzw18BcAvAJ0
         vR2YkA4srUojuBAY5euzXHR4mFMFybYWk0DKbKb9HgKeCRwi/wNJjCKCmAa77Uc87MtJ
         O1VDsSEw5c2wzHVvVj0KoXkrJa3iBMui8zBQrg1JEtBBvZa+k/WT6ZI9QppSF7ni756Z
         mWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779099252; x=1779704052;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HqBDj90Kc3B5RL3RITDRmt05U20tIBaa43CY99Xd9RQ=;
        b=PbhcWQqiFEjXojfqI4tBQ122Wg42Nl2l2hS//vQvwtBsRYZhQUJj7qNpm/f3JC6Zz4
         dBADWHHvssHLg10gc2THajmKB1weeu578vTggQXaKtl34P1neDyTFZlhg6yKitW50iXU
         9uEiSq/4tVcIvz2AgNjmQUI+SlRiu6ss0/oSxkZ903B54NU8QvgMMdu2xJ9+ys/1FaYb
         VUKxG7V1oon7eACSKnYsaqnnTDCFcIl2lj2SfOf4oq00QCtRNSGaNFOSfCNDIO1aOHik
         GHLsUycEEQdyM4pLUiPJMgRNsSm0dWKpTJI7noBLF+N/zRk5xy3PBcEgSCm4MS3L9y8j
         tdqw==
X-Forwarded-Encrypted: i=1; AFNElJ+UtopEZsnxPSSwD7OTOKAKou+1SB0obsX68+2Dvh/z2SL0K0rna6vj6+5+WW11+IuPr2d5KXa8xyZjOakM@lists.linaro.org
X-Gm-Message-State: AOJu0Yy+9fHrO/LYDJatRua5YnyzjQwWB+6u11Y312JDSmCHHemXbNrE
	Mtswy76Qu7hcoqOGG/rsNOhNdBDsmLOQj1f6QnBg9gYVzgmtnPQiosp8
X-Gm-Gg: Acq92OF7N2Eadcaz1w3QrN47Pyp6zFOXobSX7mkrtOYnODiOVTKLr2oMbkJu7v6cttr
	9WM/WvMLsdqghb+I8w9cA78SNCUF4pLKbPDefKhLHjvPzyXfOmkCW5sADZSYHV6W2DUdyw289tp
	lPhP81OcP8azb+nQKKrBxGNM1JvO4MZ5H59P5jl1lBKTehaNX9fvHB87dtmH/XS1CXDrarypKEZ
	yizFhfM5BuH+xa7ax6DjQK1qEQQzY7AqjDvtUbUd6XnCgH7EC0+kA1SEHFbrO2T0NbbY6B9Exte
	bnjf7QxkT45nxb9JrKa9kkW8c9Gjm0Nd1yYutJetKaDrdNy8/waiQ1YYo5Tdnff0FQ1ZSslbwgZ
	IamcNHwA9Yp8hEs8sHMYSu0uM/m5OpZNBSxv3kctbA03cNmd+8HFy2SNbB/p/gtoVm5+47rbvg5
	q8wE00+iwiJ6IagMtBpMda0uc0XiDHm8KhyNnyNE3NLnxheXbgj6wWTgJegMJm9vV8DZ2sryc4F
	mvqF7dgXSKPi7+BqMWPJuEYHXyKKh8Kflpt+ZgjTz8eNSpyxzdc0jexreg=
X-Received: by 2002:a05:600c:3b12:b0:488:b14f:b8ed with SMTP id 5b1f17b1804b1-48fe59ab80emr218398395e9.0.1779099252361;
        Mon, 18 May 2026 03:14:12 -0700 (PDT)
Received: from ?IPV6:2620:10d:c096:325:77fd:1068:74c8:af87? ([2620:10d:c092:600::1:6e9b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0fe0f72sm38877974f8f.25.2026.05.18.03.14.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 03:14:11 -0700 (PDT)
Message-ID: <ebf41920-5852-428f-b98a-e0f44c8f3315@gmail.com>
Date: Mon, 18 May 2026 11:14:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <c61e6d928f86f4cb253ae350272e6039faefd3a6.1777475843.git.asml.silence@gmail.com>
 <20260513082431.GA6461@lst.de>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <20260513082431.GA6461@lst.de>
X-Spamd-Bar: ---
Message-ID-Hash: Q67FS3K6VDMMWPZETXHV7JZ7Q7OQBMLH
X-Message-ID-Hash: Q67FS3K6VDMMWPZETXHV7JZ7Q7OQBMLH
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 05/10] lib: add dmabuf token infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q67FS3K6VDMMWPZETXHV7JZ7Q7OQBMLH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 4400056A803
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.484];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Action: no action

On 5/13/26 09:24, Christoph Hellwig wrote:
> Naming and placement:
> 
> This is about dma-buf based I/O.  So I'd expect it to be named dma-buf-io
> and no io-dmabuf, and live in drivers/dma-buf and not the unrelated lib/.
> But I'd like to hear from the dma-buf maintainers about that.

Looking at what Ming is saying, it'd make more sense to keep some of the
parts like iterator and the file op more flexible and not automatically
imply dma-buf even if it's the main and for now the only medium. I.e.
ublk/fuse can use a similar interface for mapping buffers to the server
even without dma mappings.

I don't know how the API should look like, maybe passing memfd, and dma-buf
supports mmap, but I think it's better to call the op something like
"register_buffer" instead and keep all it in lib/ for the same reasons.

> Config option:  as this unconditionally when DMA_SHARED_BUFFER is enabled,
> why does it need a separate config option?

More clearly marking relevant code, easier to make optional if needed,
and gives some introspection via /proc/config.

> Interface:  io_dmabuf_token_create / ->create_dmabuf_token filling
> in a structure allocated by the caller feels odd.

It's minimising pointer chasing. "token" is mainly used by io_uring in
the hot path, and io_uring just keeps it as a part of a larger struct.
For the same reasons "map" is allocated by the driver.

I can add an extra parameter to io_dmabuf_token_create() for how
many extra bytes to allocate for the caller's use, if that makes
things any better for you, but it was easier to just pass an
already allocated struct.

   My gut feeling
> would be to move most of io_dmabuf_token_create into a helper called
> by ->create_dmabuf_token so that the token is allocated in the
> driver data structure and returned from create_dmabuf_token.

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
