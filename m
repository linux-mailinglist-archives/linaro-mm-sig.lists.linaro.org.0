Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCeBMrNnHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:18:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7054062880A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:18:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FE04409BE
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:18:42 +0000 (UTC)
Received: from mail-ej1-f73.google.com (mail-ej1-f73.google.com [209.85.218.73])
	by lists.linaro.org (Postfix) with ESMTPS id 4F1253F7DA
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 09:46:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=PSYUIc9n;
	spf=pass (lists.linaro.org: domain of 32VQdagkKDVAs30uw9Gz3y66y3w.u64305s96-44-A0y30ABA.305s96.69y@flex--aliceryhl.bounces.google.com designates 209.85.218.73 as permitted sender) smtp.mailfrom=32VQdagkKDVAs30uw9Gz3y66y3w.u64305s96-44-A0y30ABA.305s96.69y@flex--aliceryhl.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ej1-f73.google.com with SMTP id a640c23a62f3a-bed6ea49b41so84395666b.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Jun 2026 02:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1780307162; x=1780911962; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=F2mLiP05KImuXhLYRlm3itUuIPBG7j9sX+uByjRaID4=;
        b=PSYUIc9nv4rHTx0t6P3BzqbS/oRJGX1vK5cuCed7cCMGTQpDo4GK2VV2O1LEQboeQP
         QGkx33q7/rULjdDUROGkB5eTtm1w3XxUPsBCWoNTxAhvgixlUvwa0tByC2sHE+2Pd4i0
         ZH2Habx8PIOX/xlr0pWNhIbUu/qbPpIxjjtZDwwIYJE8TzGz0cGePyoMQb1tmnFrxalX
         jtOH2fHX9qgAWz7W2KAuXPwUGgqK0A/waH1baa36FhKW+EYNxC78pc7+J61+k93yU8xp
         TJHXKT1h6z6OcOGJTYBM5iF7b0bapC8OibtaDd2vXHRc0Iq410K1NnVsPbWa2Ib1rqvd
         UdIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780307162; x=1780911962;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F2mLiP05KImuXhLYRlm3itUuIPBG7j9sX+uByjRaID4=;
        b=RkBHKHJY+ZH6Zsq0/gGc9MEJOxux3bqUdX7M4PYw9CIpIfqCIaVwMziTJ6NMlivh3e
         KmeoUybYHyePnOXFBGhE1Lvxt+uhfxi+8KzPfAVSrJ76SYSvaiZOIcQYRR0001aGN67W
         TKOswrkaJc1SLkdr20BwqEiDxhHUIqIYj6ArUaCXUBzSr/tevCnPluVRVQ/imT0cDS1k
         FJ5B/iFWWU6N1zWdOwRDOXAMfIQ8ZiJjvItajNgepJd+Z4UUnJDmZJQo/IeA9aVEDwfa
         tO6AAeIZvLQPSlSTqlpcp6EkjiFnFuST10TFGabq/URiZhiMs7Xi6pXgGzIyJjslrnuY
         wh/Q==
X-Forwarded-Encrypted: i=1; AFNElJ8emlF7/wWV8H9T98uEcDPLiyVP1DGRLPPKjmOKPCHV00LCWBphR1VKklHnvR5VQ+ymLcXSz+GqDcmdTF7d@lists.linaro.org
X-Gm-Message-State: AOJu0YxsF8sf9AvQ0IeGmEvXn31IBzDfVhxpazyB1jTHzICew0y37lWw
	yiuIirV5EX5H5jO1M8Y3A24GZZGoyPQqeDPjVa7RSJU/F6+xkDr5flO6IEL4GzLAIXzrxDztF89
	3kIlxTOvcMe8MqHkMCQ==
X-Received: from ejcmy11.prod.google.com ([2002:a17:906:5a4b:b0:beb:3773:86c7])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:907:e158:b0:beb:7979:47dd with SMTP id a640c23a62f3a-beb797959f7mr242224566b.27.1780307161830;
 Mon, 01 Jun 2026 02:46:01 -0700 (PDT)
Date: Mon, 1 Jun 2026 09:46:00 +0000
In-Reply-To: <20260530143541.229628-3-phasta@kernel.org>
Mime-Version: 1.0
References: <20260530143541.229628-2-phasta@kernel.org> <20260530143541.229628-3-phasta@kernel.org>
Message-ID: <ah1U2P8ppTjprYwR@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Philipp Stanner <phasta@kernel.org>
X-Spamd-Bar: ---
X-MailFrom: 32VQdagkKDVAs30uw9Gz3y66y3w.u64305s96-44-A0y30ABA.305s96.69y@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RQ7D6FX6INE46WV2GO37ZICP5R6F23ZA
X-Message-ID-Hash: RQ7D6FX6INE46WV2GO37ZICP5R6F23ZA
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:17:59 +0000
CC: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?utf-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.org>, Alexandre Courbot <a
 courbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] rust: types: implement ForeignOwnable for ARef<T>
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RQ7D6FX6INE46WV2GO37ZICP5R6F23ZA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[37];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: 7054062880A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, May 30, 2026 at 04:35:09PM +0200, Philipp Stanner wrote:
> From: Danilo Krummrich <dakr@kernel.org>
> 
> Implement ForeignOwnable for ARef<T>, making it possible for C code to
> own an ARef<T>.
> 
> Since ARef represents shared ownership, BorrowedMut is &T rather than
> &mut T, matching the semantics of the underlying reference-counted type.
> 
> Signed-off-by: Danilo Krummrich <dakr@kernel.org>

Reviewed-by: Alice Ryhl <aliceryhl@google.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
