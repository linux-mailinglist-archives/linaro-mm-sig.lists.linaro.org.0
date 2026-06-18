Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JjhLI5ZDNGo9TQYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 21:14:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCB46A250C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 21:14:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=bikK1D0a;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F20D4409FB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 19:14:28 +0000 (UTC)
Received: from mail-dl1-f48.google.com (mail-dl1-f48.google.com [74.125.82.48])
	by lists.linaro.org (Postfix) with ESMTPS id 5D28A3F9B2
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 19:14:19 +0000 (UTC)
Received: by mail-dl1-f48.google.com with SMTP id a92af1059eb24-1364ff8099cso50160c88.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 12:14:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781810058; cv=none;
        d=google.com; s=arc-20240605;
        b=RQdxWR0uxGkpT5WvHWGSK2/Mcah9ze5Y+To6t68xlb7b3aNBorTti4ob/7FywUQh6U
         UxlDjCytAcH9Pg110rpQEPyH3ysIJdhOHZZh0rp1obYQOzYjhBdidd1QedD95Nk5JdLi
         jS6u0ibFt8K8sSfygch5hIuC3jwkCP8SrTnv/FsJnZAwwNBbMaElB90oDHFtHABlANqm
         19k9xFl0bFt5YvfGL4oHHqoGiTbPmrZY26LGWEKLmfVLWJDwQE+D2u1BndBMZInWf8cN
         0PunZVfUR4hE8h0QczwN3AmKRXYRAaUTOH9VdbSRcHrLFCDbtHvS4ZiSEQ+AVJNqN7B9
         PrtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3gIhj8csyUjzimg3goW3Pzqun4T3ZR1YGiH42Uwliks=;
        fh=sXYtCFXQUvv+e0SsLmKV8+3hTMmggEKnRS6B7N2P1tQ=;
        b=MQqGXdossqzLStsoutKg27AqCmb/CDOWH/ldmSXCLH2dmTw/isPPxXk5yv+YOnQHpO
         mlgAgM51sXnGFHe7AZtIXbmBV8K/mtFqSnmWzbK7FBdqxhoX91NbT6KuQyNXZ2hHBPIE
         SWHqW5dVejR4q5BZIfRvM4w3FuVaalYZX2d2PfJw8l3vsGj0dVbQJnrO02YYPx4K8y+O
         j8JHM2+azCJo4/S7oKT10bReLWvbJZ+hf15hAz5OS1l9fWDfPbbG8+9ZkZW00c0ms9dK
         zODBwsIeAh8uytd82UkXzVHTGikEK6BEDUv+/7E7VwDP09khgmKMk6nrR8764p++mJPf
         RJeA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781810058; x=1782414858; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3gIhj8csyUjzimg3goW3Pzqun4T3ZR1YGiH42Uwliks=;
        b=bikK1D0a03KF9m5D5mBLtV1f16Ro5ZZt7FTrgu/DWCL84BEGdq+9EIcDZMLs4aii0d
         FZo444l8TNbzJgqk+bb2SUobPgyA5cspPMe50dIAJ7e7N8g4kIUs0i5DtVJqd3GURgrM
         ybDRKmiqtr4xTLkZkv2BtMaUmN2Ns82CzKGSlz4PNVYDbqPLZR42crffoig9zc7E27B0
         5FZQvLtNc6Z/adU2oYnPAfvqnYNWXLGoRdZ67EKPivNtxR2RgnfhIO9VlpawdJstjQuJ
         5oJn96Ho2m0Xmv8h8vXwFPku/R4ITwrJTW6f6c5oKGmg3/oXVvpxxCxUiAjeYKZ/gJxE
         aI6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781810058; x=1782414858;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3gIhj8csyUjzimg3goW3Pzqun4T3ZR1YGiH42Uwliks=;
        b=SBRB51SBhjHeqYwDC+vUhHL0F1wG5YlOyoGINnYpDMBu1ExzMurZJTCYDICRrxjFWu
         ppEWTNerSYDLPJJPD3NZuP8IyNXfEXNHwTE4XSg0Cj6LXrwaA1S75JaMIeeqQAs7LK2R
         iNwKmHOMwPZjFg8PlHwX7j76j/4MYwMajAvd9HoF3frcfi9JEPKmmJRSz+doLi8fC3Fw
         HvteVcfNuGNA8ghqGhuNxPLeu8Rb3mjsKVL9RuqotnNjA3Qg0OObiGKwyMmUinsPMrIQ
         6ttFRr+F+bUTzA56R7Jlx+LTZFCIAaotNdM9UPZLKOqMZ1/qY/d6gRI88BztP+GDAckc
         Qxig==
X-Forwarded-Encrypted: i=1; AFNElJ8Xsj4gNqL7VDCLmKmKa/KlEwpy1WT65XIpR4kbnFqmi8Ng+rnEBVAAd3jvRlACJMTQIvq1ovMbHko+aAlV@lists.linaro.org
X-Gm-Message-State: AOJu0YyGN+4wjmHX53ApUNwxMwGe5aXG3NvwU3o5wT7BVShwaJr2V3xd
	2W7XFGraozCba3hfQMbesB0bjpiN6JduVNJr9UpmROgNfxaEYnsAE5Xtzq/X5tjNiGvVjkQovvo
	0zNZnaKPZsNjgifQhMQsNwPkg7km4ABw=
X-Gm-Gg: AfdE7cmcTgxDelOsSW6gM4fh9K1xRtL262FgtPMkCisPVOX3exiiemxrCfFoqDM0dkd
	7Oi7AzrpIF3GGl2r30o2a3wKn+JlHh1xoqS3tzGumCyHn+VrnzYwTWXcvQq5WXzzCW1rO8iPzBN
	wtipg3ggRlyRj53cDnwcw0gJKIP2I4aKRyNXY5q2dmtb6XDoO+Ovuy6ynhu+unlGLZUlDk6khR4
	GYI6Y+kZy+aABsSdgjFCkdNQCcTjMQyDwoiDinNXApRhokNLe0azgWbFgt/pYngDtucBrUD+3cM
	R8nZm6dNFd+0Gi5/ZUHNxK5a26i9HbKPoja9gJ6gfNvBfjdabtFarmi79cy5IDzB591T8KMPf+S
	wv7Of1TOv/ZUt
X-Received: by 2002:a05:7300:230b:b0:30b:e4a6:1aab with SMTP id
 5a478bee46e88-30c074f8c21mr216868eec.8.1781810058121; Thu, 18 Jun 2026
 12:14:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260618132628.3811068-2-phasta@kernel.org> <20260618132628.3811068-4-phasta@kernel.org>
In-Reply-To: <20260618132628.3811068-4-phasta@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 18 Jun 2026 21:14:05 +0200
X-Gm-Features: AVVi8CeC-ql5SLxnogYN7t_D3e3IE25SNmVufxe0bxI6l-UhWmyMsdwZiyoyB5w
Message-ID: <CANiq72ke2pfkhHB-_x0dTKUbktkTvLsu7z5eCFYVyL1CH=O0Cw@mail.gmail.com>
To: Philipp Stanner <phasta@kernel.org>
X-Spamd-Bar: -----
Message-ID-Hash: HN5D7LQLOIFJJBVCLTU3WIO6VJ2CHYB6
X-Message-ID-Hash: HN5D7LQLOIFJJBVCLTU3WIO6VJ2CHYB6
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alexandre Courbot <acourbot@nvidia.com>, Asahi Lina <lina+kernel@asahilina.net>, Matthew Maurer <mmaurer@google.com>, Lorenzo Stoakes <ljs@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Burak Emir <bqe@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Tamir Duberstein <tamird@kernel.org>, =?UTF-8?Q?Onur_=C3=96zkan?= <work@onurozkan.dev>, Eliot Courtney <ecourtney@nvidia.com>, Mirko Adzic <adzicmirko97
 @gmail.com>, Alistair Francis <alistair.francis@wdc.com>, Shankari Anand <shankari.ak0208@gmail.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/4] rust: error: Add ECANCELED error code
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HN5D7LQLOIFJJBVCLTU3WIO6VJ2CHYB6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:acourbot@nvidia.com,m:lina+kernel@asahilina.net,m:mmaurer@google.com,m:ljs@kernel.org,m:joelagnelf@nvidia.com,m:bqe@google.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:tamird@kernel.org,m:work@onurozkan.dev,m:ecourtney@nvidia.com,m:adzicmirko97 @gmail.com,m:alistair.francis@wdc.com,m:shankari.ak0208@gmail.com,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lina@asahilina.net,m:fujitatomonori@gmail.com,m:shankariak0208@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[33];
	FORGED_SENDER(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,collabora.com,linuxfoundation.org,nvidia.com,asahilina.net,gmail.com,onurozkan.dev,wdc.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1BCB46A250C

T24gVGh1LCBKdW4gMTgsIDIwMjYgYXQgMzoyN+KAr1BNIFBoaWxpcHAgU3Rhbm5lciA8cGhhc3Rh
QGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiArICAgIGRlY2xhcmVfZXJyIShFQ0FOQ0VMRUQsICJS
ZXF1ZXN0IGhhcyBiZWVuIGNhbmNlbGVkLiIpOw0KDQpQbGVhc2UgcGxhY2UgaXQgYWZ0ZXIgYEVU
SU1FRE9VVGAgKHRoZXNlIGFyZSBtZWFudCB0byBiZSBzb3J0ZWQgdGhlDQpzYW1lIHdheSBhcyBp
biB0aGUgQyBzaWRlIC0tIHdlIGhhZCBhIHBhdGNoIGF0IHNvbWUgcG9pbnQgdG8gbWFrZSBpdA0K
bW9yZSBvYnZpb3VzLCBwZXJoYXBzIHNvbWVvbmUgY2FuIHJlc3VycmVjdCBpdCkuDQoNCkNoZWVy
cywNCk1pZ3VlbA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
