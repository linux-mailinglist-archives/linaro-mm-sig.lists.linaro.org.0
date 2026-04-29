Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAlpKzwc8mljnwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:57:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 782424965D7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:56:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6AEC03F7F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 14:56:51 +0000 (UTC)
Received: from mail-wm1-f73.google.com (mail-wm1-f73.google.com [209.85.128.73])
	by lists.linaro.org (Postfix) with ESMTPS id 3D8B83F7F1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 08:05:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=FZkqOoCg;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 35LvxaQkKDXkXifZboveidlldib.ZljifkXol-jj-pfdifpqp.ifkXol.lod@flex--aliceryhl.bounces.google.com designates 209.85.128.73 as permitted sender) smtp.mailfrom=35LvxaQkKDXkXifZboveidlldib.ZljifkXol-jj-pfdifpqp.ifkXol.lod@flex--aliceryhl.bounces.google.com
Received: by mail-wm1-f73.google.com with SMTP id 5b1f17b1804b1-48906aa28cbso4437145e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 01:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777449956; x=1778054756; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=S6Sri/DxWYhekkoJhKaFCAGZ5nRi8N5LN4MWLa1I+oA=;
        b=FZkqOoCgmPSk0QtPsEJzlnny2coDGno75eNjStS2WZFxX4b26AhWR1Fo9RuvYdC873
         Cll5S1KvYGUYr2zHw1aVyKAIHngLevsnpko+K2rV2bHjB7ZKJJLQmBez8w1rfAydbn6X
         5KHbATWtitoMdPB8NB83RAUEgsu4L723gwk34koqIVm8uC6UEtaVhM8IzxKHuvLOxtcg
         px5ePP0DXVF8y19HBxWLBOU/Ft950HPkOCJzlDnVE6SQ8IWWILpLXX49ahqQItXTzdQE
         DnDEQuw/Q1GyjueSYPYwGu/3mec8ljgGHwSZzkNcEtVsTlB6/FtHIVSTgvZcT0P5KJ/6
         sTYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777449956; x=1778054756;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S6Sri/DxWYhekkoJhKaFCAGZ5nRi8N5LN4MWLa1I+oA=;
        b=WiQaQQYwf0I2fXCixPgL5Usbrmo439wv15GmvcrjPT9Gg/caURazQi6CTItz80XeA3
         bx8NlBGm3Lj7vQeGJfpFbQZqeDrBQc8pcdcMiBh5MC9v0DqtNaRA9v/xOLRkcuLm7G1x
         kgBNbGUQSj4JhMptpcqt9g4QRx4MLnoJW55MaSoRhX6WrV2RGUhq3rEScj28Zvs97U6+
         SmtEH/PqnjebTDCPC38vgXUIHmspQ9LBgFi/7JxOkGzfNrcdL9lXqi0sm7TMtvBPzb95
         +62MWWeG9b3LIFzFUTO4vWLQE2mdqzSQCJZ+KZCz0oLQTkgpnenBITrvNcQGI21X/FSl
         FVJQ==
X-Forwarded-Encrypted: i=1; AFNElJ/qHMq6WXATXpx6vRkfm4M3QxV5gdL3zo1daoDmElqIcRyJGuroQdFq08mVU0viojHmm+rSexvb7LgRW0mm@lists.linaro.org
X-Gm-Message-State: AOJu0YxyaxkNjtyz0pWpL180KeMQjF5j5icp9zLF9eCg807PjM2rYCNz
	cv+gJBsI1xpM25QNE8kn0/STo4stz8WjVSr3VCGgxDV/verSiDEPwuRDk2YfBwgNMDOvf4bpg+o
	rzIldVn2cBaKotOM7wQ==
X-Received: from wmkz21.prod.google.com ([2002:a7b:c7d5:0:b0:48a:5351:7e80])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:8012:b0:486:f893:56c6 with SMTP id 5b1f17b1804b1-48a7bfb4564mr34552015e9.10.1777449956055;
 Wed, 29 Apr 2026 01:05:56 -0700 (PDT)
Date: Wed, 29 Apr 2026 08:05:55 +0000
In-Reply-To: <20260428190605.3355690-2-lyude@redhat.com>
Mime-Version: 1.0
References: <20260428190605.3355690-1-lyude@redhat.com> <20260428190605.3355690-2-lyude@redhat.com>
Message-ID: <afG744xkGUZBgNth@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Lyude Paul <lyude@redhat.com>
X-Spamd-Bar: --
X-MailFrom: 35LvxaQkKDXkXifZboveidlldib.ZljifkXol-jj-pfdifpqp.ifkXol.lod@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ODMIV6KEXWUQONU3RI3ADOZO3WVX4AJ6
X-Message-ID-Hash: ODMIV6KEXWUQONU3RI3ADOZO3WVX4AJ6
X-Mailman-Approved-At: Wed, 29 Apr 2026 14:31:05 +0000
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v13 1/5] rust: drm: gem: s/device::Device/Device/ for shmem.rs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ODMIV6KEXWUQONU3RI3ADOZO3WVX4AJ6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 782424965D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	NEURAL_SPAM(0.00)[0.912];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,nvidia.com:email]

On Tue, Apr 28, 2026 at 03:03:41PM -0400, Lyude Paul wrote:
> We're about to start explicitly mentioning kernel devices as well in this
> file, so this makes it easier to differentiate the two by allowing us to
> import `device` as `kernel::device`.
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>

Reviewed-by: Alice Ryhl <aliceryhl@google.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
