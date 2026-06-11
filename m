Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zuckBL6XKmq8tAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 13:10:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8906712EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 13:10:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=JEh4c2dU;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA1B5404D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 11:10:52 +0000 (UTC)
Received: from mail-wm1-f74.google.com (mail-wm1-f74.google.com [209.85.128.74])
	by lists.linaro.org (Postfix) with ESMTPS id CC385409A3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 11:10:37 +0000 (UTC)
Received: by mail-wm1-f74.google.com with SMTP id 5b1f17b1804b1-490afe64f26so4160345e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 04:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781176237; x=1781781037; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=B2hPEJWO7zc+9d/tXPog7CgsAXE7dhbuzsNKzaOmhd4=;
        b=JEh4c2dUDxxQOu0qkuS0Dj9JOna7rooeugz4MJJbMmLQ8Pt27l2temWlid6+apeq4R
         FEp8rNYcHhj6TPmTFPHp0Vbca9q6iFz0b6ZhkL+nHeBh4o2RDt92mcIZ7Bsr65XJDbLk
         oO3I+HNpt5qfVVhDTZ4QlyUHAeLgfIuD7q5NWra+Uov3kcOiAIdms+t6H09HRQ3Ih7+Y
         haoLTRVAfqNybnOErIRGp4/mkybZLZUM0ZI6jJOIQhLxY2rn0Y5FMxhhudEgP71PIf1m
         tEL2zgx+U9YiW2Nb6SQ90spCHxg5SyLa6g/akngRNXxx/r48HyYxNltfMxUVIpdHwCwK
         WnSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781176237; x=1781781037;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B2hPEJWO7zc+9d/tXPog7CgsAXE7dhbuzsNKzaOmhd4=;
        b=dgSJxm1Sp9tR6UTTYbJBzaWjVjEvRmsRowsZsyiqIVUCQa5CG+7pwDSV56u/Sn8DW3
         xz5UZ3IRcRgToIoGWfG9jbsBE6hTE5unpMjMRFHS9ah/WBYpFUGXwvS1UGN0Tspm8qS5
         qpYGpYmp1HYiGLljB8rGT/pSEQ8qWrSP8QEYHrZRjflySXGzQkhcLi79BbCHdsqnkRHw
         ZDDtiWWlVkQISbAC/PgxiSR72NmhDrLHhNH96oADljJ5eWVmtKnuWaBT8rd5cBVATXSt
         BpaVY871F6+XrIf81tsRy/N5QhpUTZGyyp6mfEaKEiPqXtN/JA13+gd2Wkwr/jzoFuSt
         qqUQ==
X-Forwarded-Encrypted: i=1; AFNElJ8Z4sfeVtZXQD75OU9KoXH6tTuPVpgg+rpj9ry0++MkcPctU+l355NyQiQibEZpgn0lOYUUE5iiP+jKFSPD@lists.linaro.org
X-Gm-Message-State: AOJu0YwwcXSz+ZwDQaw3IvzgxI9U0ulWjQEHE2r7BXj6YLuZaBsR0sQ6
	6Tk/x2y+CthyOUHbb+7P8gG6HYTgNG7a681H/wp3hblG1+Ljj3uaKgjdrl940xDexwuesTDCwQc
	67uRcD2e0TimbbJwSbA==
X-Received: from wmbgx15.prod.google.com ([2002:a05:600c:858f:b0:490:b1cf:4fed])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:4fc8:b0:490:af63:2cb1 with SMTP id 5b1f17b1804b1-490e52df887mr25369835e9.7.1781176236585;
 Thu, 11 Jun 2026 04:10:36 -0700 (PDT)
Date: Thu, 11 Jun 2026 11:10:35 +0000
In-Reply-To: <20260610162433.923550-4-lyude@redhat.com>
Mime-Version: 1.0
References: <20260610162433.923550-1-lyude@redhat.com> <20260610162433.923550-4-lyude@redhat.com>
Message-ID: <aiqXq_ufWWztHPQ6@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Lyude Paul <lyude@redhat.com>
X-Spamd-Bar: ---
Message-ID-Hash: R4FNVRPRPO6P3H3A3ZEXJGFZ5FIJG5SF
X-Message-ID-Hash: R4FNVRPRPO6P3H3A3ZEXJGFZ5FIJG5SF
X-MailFrom: 3rJcqagkKDd09KHBDQXGKFNNFKD.BNLKHM9QN-LL-RHFKHRSR.KHM9QN.NQF@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Alexandre Courbot <acourbot@nvidia.com>, Gary Guo <gary@garyguo.net>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v20 3/4] rust: faux: Allow retrieving a bound Device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R4FNVRPRPO6P3H3A3ZEXJGFZ5FIJG5SF/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS(0.00)[m:lyude@redhat.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:acourbot@nvidia.com,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,nvidia.com,garyguo.net,amd.com,lists.linux.dev,kernel.org,linux.intel.com,ffwll.ch,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,nvidia.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA8906712EE

On Wed, Jun 10, 2026 at 12:21:30PM -0400, Lyude Paul wrote:
> When writing up some rust code that used faux devices for unit testing, I
> noticed that we never actually added the Bound device context to
> faux::Registration's AsRef<device::Device> implementation. This being said:
> the Registration object itself is proof that a driver is bound to the
> device - so this should be safe.
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>

Reviewed-by: Alice Ryhl <aliceryhl@google.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
