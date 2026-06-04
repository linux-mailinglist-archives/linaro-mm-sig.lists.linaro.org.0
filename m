Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qjH5H19oIWrdFwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 13:58:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF3C63FA5B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 13:58:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=kIYrHn1N;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E1CC4098A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2026 11:58:22 +0000 (UTC)
Received: from mail-ed1-f74.google.com (mail-ed1-f74.google.com [209.85.208.74])
	by lists.linaro.org (Postfix) with ESMTPS id 2AA5140168
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2026 11:58:12 +0000 (UTC)
Received: by mail-ed1-f74.google.com with SMTP id 4fb4d7f45d1cf-68ae236d5fcso746185a12.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2026 04:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1780574291; x=1781179091; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=tsDBf51o8QHp6SAQ5/8ziLKktk7y3LjUQBohqdmyxqM=;
        b=kIYrHn1NOmnGJx4RFDpWoshTjmOSQZbD6zjGbkNpRWChgEj2HnH5D4xkz19GHILWO7
         1D3fZCzd6GNvx966nBqYwCj4SGi7zanRXE1LSBu4t6KUF/7fRjJsSTort5mQN6MRkis3
         O8m6kYzdkblh7Fuu1CDXdOQwzRZpYFS2Z5CULZhXo/S+dxkgEwYR2ipspxW5nA3l5spa
         sjcZfyKUfhpKRMmN1gMIiANTy0JC4R64/FTNufAmEUL7eD15J5NX8uxRm+KKsF3pyw/q
         GRD4Bg/y8Jfmp4D50jhPgVqO93Ihl8vCrwVy2PeJ1cp+L8HHJRkYXrxNFXFr5uAqO3Zn
         ugTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780574291; x=1781179091;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tsDBf51o8QHp6SAQ5/8ziLKktk7y3LjUQBohqdmyxqM=;
        b=EsstHnvAT4lLwqiMlViCa+9Y5FSAGDS/2BEeFTWnG5QoZl0FRvCu/SXjCho3xL9Azq
         npI1yRE6O4cGmjDXOWP5kNi78Om/0zeKRw9DYFxu0bW/rXSVRT/fLPjFTTvLP7ha8S/M
         71o2TCc92f4Uv+3Z62kRt4oSc7VpnT7fBCAy51d4B5Oz0JeYTvf156fG4ffhfJv0rrsC
         knVgbt+2LYLhb+NlJJpgWZ20ldvLtChM6cnmsqIk4jrgqr98oYKBTQdQ9j3l90pwSgYH
         /oj4p/cOqC3Z8hK5viSXdpJYhDxn0d7ggEIyGnd+xwiavcQBFb+tjFOGyo1weHSpCHqh
         zG2w==
X-Forwarded-Encrypted: i=1; AFNElJ9jdUY9jhtkBaxLbw8GVB37xln5yX10gj9r04/lEUNKVv5Rkg7n8eLCXYrBcdo4OThfs6aYpt+NzS/NOjFo@lists.linaro.org
X-Gm-Message-State: AOJu0YxEdtqjFE99MnRyVZitFWuNZqnlPxtNOVTTtypCHOMxoipjHGdV
	ushFV92nsLmKsavgtOuXZZSucbeuHYRhd15NyZ4pK0FG22vCvMEFKSoW8be8+Gq53dd+qRCehKo
	1OVXvZOacJ+5yb9E+ug==
X-Received: from edrm6.prod.google.com ([2002:aa7:d346:0:b0:68b:163d:99f3])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6402:27cf:b0:688:1d5:44c5 with SMTP id 4fb4d7f45d1cf-68e6f79352amr4016032a12.2.1780574290900;
 Thu, 04 Jun 2026 04:58:10 -0700 (PDT)
Date: Thu, 4 Jun 2026 11:58:09 +0000
In-Reply-To: <20260603195210.693856-6-lyude@redhat.com>
Mime-Version: 1.0
References: <20260603195210.693856-1-lyude@redhat.com> <20260603195210.693856-6-lyude@redhat.com>
Message-ID: <aiFoUauWYLz-Oyrx@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Lyude Paul <lyude@redhat.com>
X-Spamd-Bar: --
Message-ID-Hash: LQ6WWUX2NC4U4ZSGGE35JZFJM4ISLGDR
X-Message-ID-Hash: LQ6WWUX2NC4U4ZSGGE35JZFJM4ISLGDR
X-MailFrom: 3UmghagkKDQEbmjdfszimhpphmf.dpnmjobsp-nn-tjhmjtut.mjobsp.psh@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Alexandre Courbot <acourbot@nvidia.com>, Gary Guo <gary@garyguo.net>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Maxime Ripard <mripard@kernel.org>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v17 5/6] rust: sync: Add SetOnce::reset()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LQ6WWUX2NC4U4ZSGGE35JZFJM4ISLGDR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS(0.00)[m:lyude@redhat.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:acourbot@nvidia.com,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:mripard@kernel.org,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,nvidia.com,garyguo.net,amd.com,lists.linux.dev,kernel.org,linux.intel.com,ffwll.ch,linaro.org,lists.linaro.org,gmail.com,asahilina.net,collabora.com,linuxfoundation.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0EF3C63FA5B

On Wed, Jun 03, 2026 at 03:42:34PM -0400, Lyude Paul wrote:
> This function simply drops the contents of the SetOnce, given a mutable
> reference - since that proves we have exclusive access to the SetOnce.
> Additionally, update the invariants for SetOnce to make it clear as to why
> this is safe.
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>

This isn't needed, you can just do:

unsafe { (*this).sgt_res = SetOnce::new() };

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
