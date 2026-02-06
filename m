Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGkyIdAQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F710411D08
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 534A544C45
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:39:43 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id C93843F753
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Feb 2026 18:01:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Sc4riQHw;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48068ed1eccso25362925e9.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 06 Feb 2026 10:01:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770400890; x=1771005690; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=chld7W3Rbl2PUp6cBiIbC1iT7uESUsO9DngY57S8hBw=;
        b=Sc4riQHwebzkYAN0ASJms776mzT4vPP2X4ajsyDglZSxsU/Xg8CVsEnU1V3bul34Gj
         JrH/E8ZwdK5mNe/vzW1DVUZ+dJg3GvJMM4U2Y3gOjx1gX7a7MHC4AYKiCFhPkL4kwVd6
         LQobpzflkKvrUw2y3EeEnIB7p7C/v5eQN4YYitXoHnlXJWX6gm9tCeUGkI1ZFSeM0SCp
         BSPFx9jb+jS++V/MLxAAYGBkrZy6fx1NfQHa0rMOvCKDTphuHrZXUciuOiWkEbGhVrLt
         6kQ0uDcdmhkdbcq2KPiRqtqaLgDS1NCifNOocnD7/JlHpRfmOvkfWpRg/QKln16rmT48
         Qddg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770400890; x=1771005690;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=chld7W3Rbl2PUp6cBiIbC1iT7uESUsO9DngY57S8hBw=;
        b=IF3/272RfKyiY2lPoe/+TjXu3yp1BJcxUzU1e/P1Ukn5/DB2BlhrsqO2jJfayeuy3Q
         mCu5oagHNihH7YgpX2JbAEjEjyejPuFQuNVeVvo2a++ojE/Gf7XyixsztSxkdmpYo2Lk
         pfWUZHPeMjxNFkxKjP638U0xnUyEPboR8Z2FHSbqMyJdOk6GA1b0NsIycp8gFWTr96KN
         c5lLHsAmH37NUe0WgNjMnorO8jMSJM+ge5F3i/CfSTk9SQTky3Zvgewexjb1STiI0ewk
         Xb9ZGEnLcH6ppYQzJ5jTgETTcDkvscnQKlr2HNBPNhgxdE7sBAdykCRwuiYw0F/EmrE7
         I26w==
X-Forwarded-Encrypted: i=1; AJvYcCU+CSseKyhjOrFBlMmco4ZX5t9KQWu2n7zfohEdg8G2zr+xqxLvzd1mjpNfTZyYsZpK1aJPb3TZ1IzqUE32@lists.linaro.org
X-Gm-Message-State: AOJu0Yy3LjmT5QCbdVPxgPi6eDGzN8ro533R9w+T7RkAkgSO1uveSz/j
	a+80eJA2Cs4Otrj6hWtQFzEjgov0cF4B58abJINgcjy1lJi9m3bXETFD
X-Gm-Gg: AZuq6aIbq0kCm3p41kgV3QerdS6kzzDa9YRMnUXPOE8acyVDjUbp3PFiJyW4drcr8f5
	RVXGZa6hCKjTz//qgv2zxtPKfgRfPsfYul66WBc5cTMnLGhP9bEhj9V/fplHqXRWePhBira6SJy
	X8IzzfCl+iWouVKvtjvOwQYcjlu0v0xllO/89ip4/f0szhmoXnSWcv5F8CJUdsYD2FYiEqUOlte
	0PpKnXiXhZpf31JXd8Ro+CeovSVQDX1ijyrfvYyG/kcfB1KOxyfdYXzGE+fn8ZbdGjJ4COOArrA
	HKss0IAFoUQ6Zp0oUDQNxJwoMbvn4Q4i8H6nmCsrMPzxx7KEcqP3tShibfItp9I7N4COOFD0HB4
	XUfIQuEoj8GEUGgDxMmW2IAlhIj8B0Ta5dqK3hxA9/QCcbNdZNxdLpTRatvQrMWcy83C972nobc
	OIHl0GGQH6CsIIU19cbLS0dVDgg+SgVoedvCw90DfpiU4S2+l9kscrzXJpGK4dflRiEEblDSc99
	sJi5zkj/C7aU4PTXqJGBJ+0TmyuKn9KGTrr12cIGimvRRxxDGLPYizk/f6fYKw1mA==
X-Received: by 2002:a05:600c:628d:b0:47d:6856:9bd9 with SMTP id 5b1f17b1804b1-48320216d31mr49104765e9.23.1770400889507;
        Fri, 06 Feb 2026 10:01:29 -0800 (PST)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c? ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483203e126dsm51230805e9.2.2026.02.06.10.01.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 10:01:29 -0800 (PST)
Message-ID: <b0ec01bc-4cbd-431b-bcdd-084cc14553be@gmail.com>
Date: Fri, 6 Feb 2026 18:01:31 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Anuj gupta <anuj1072538@gmail.com>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <51cddd97b31d80ec8842a88b9f3c9881419e8a7b.1763725387.git.asml.silence@gmail.com>
 <CACzX3AupFeAy0-pPsZ51ixd7qW++LYYjiKBZ3aK5Y2JDrB_JWw@mail.gmail.com>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <CACzX3AupFeAy0-pPsZ51ixd7qW++LYYjiKBZ3aK5Y2JDrB_JWw@mail.gmail.com>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MOEDHBBJWPH2J6D44QBWPCK47S3QDGUZ
X-Message-ID-Hash: MOEDHBBJWPH2J6D44QBWPCK47S3QDGUZ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:08 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 05/11] block: add infra to handle dmabuf tokens
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MOEDHBBJWPH2J6D44QBWPCK47S3QDGUZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[1654];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.773];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 3F710411D08
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2/6/26 15:08, Anuj gupta wrote:
>> +
>> +       dma_fence_init(&fence->base, &blk_mq_dma_fence_ops, &fence->lock,
>> +                       token->fence_ctx, atomic_inc_return(&token->fence_seq));
>> +       spin_lock_init(&fence->lock);
> 
> nit lock should be initialized before handing its address to
> dma_fence_init()

Good catch, thanks, I'll apply that and other suggestions. And I still
need to address bits Christoph pointed out during review.

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
