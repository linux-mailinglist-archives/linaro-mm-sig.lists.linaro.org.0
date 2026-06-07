Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kgt8DWlWJWq1HAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 07 Jun 2026 13:30:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD69650746
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 07 Jun 2026 13:30:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=HqGz1xop;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE008409E3
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Jun 2026 11:30:47 +0000 (UTC)
Received: from mail-dy1-f170.google.com (mail-dy1-f170.google.com [74.125.82.170])
	by lists.linaro.org (Postfix) with ESMTPS id 108813F853
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Jun 2026 11:30:37 +0000 (UTC)
Received: by mail-dy1-f170.google.com with SMTP id 5a478bee46e88-30741f821cfso364161eec.1
        for <linaro-mm-sig@lists.linaro.org>; Sun, 07 Jun 2026 04:30:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780831836; cv=none;
        d=google.com; s=arc-20240605;
        b=fLWtoxtheqoOKwE6UFm/6VHIhM11ewbeXSzlsa9LRCogphLsWj6wp+K+idabZgCOA6
         JBh3MazApJQmCjU1iJRBmk3lVAqesCEi+HajMNAL+L9crfjHXRqpo+lUu8Hrb9YRHJkY
         5YZE/3Uc7688K5ElNaxWy9zc7i1UTROiTlEBPpg6RRNGKcLOx9QWjWjb9SQsRxc0zqNe
         J+/fSnX7BDnmoxFKamLeSoyQJvVQeVxWe4ZBP6RpT/Ehf6Idt293KQZNuH7MpIukSTPn
         zJIFbma6+Iq3n9lIEOeRCpWTMZr/K+aC59sPsxxA9+MQoXdqok3N5V1NArouDeYibKXl
         p6Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=MRySgiTWfJabjMicfD7hcpZ6ySYoQUNxJP9qu6eB8rg=;
        fh=uRwVRqo3NFhiiO0NDWMSiDDLfwSwFOdHKSswuoF6yd4=;
        b=diRCyp3yhu1DuldEv6mORlNlh0vXTXm94qIlbO8/GzulJjXtBR0pmq6D8ZLYUuDbKm
         l9SpgxeiDi7NyNky6NjtBzKrQfgnbW8ctW12L/QtkqCGRJ4kEB793YSzI/muiT0yXZFx
         Vw8jN6DPRLENzlhxVHBgk3G8lk4lJIXIMvoRCKvd2uBBq+k41KvwEtwSBmY8KD5nRePC
         ZwGvQz94uXmuWfP+3hEMZk2Uq+nLkb+DMhFYGOS0U5Rb8+ANzH91Sjx4wVGZwto6bguz
         HSNa2NsbO8wLkHz5N+dce8TCKLXxkuXPrAxlTzxgYTzf89drhK617z4FkkeECI2NCSmj
         6XZw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780831836; x=1781436636; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MRySgiTWfJabjMicfD7hcpZ6ySYoQUNxJP9qu6eB8rg=;
        b=HqGz1xopVz3Ui3HnnspVNd56izGs5/xN9LTcs1/JN/c9urzFP3ayDPOTl2VXkARHGv
         uRCju0D/PtW9cS34Gc9/Lp2YAo7hWKRQGIodXlDX0hDBgcXQsB5fooqhvxx0jdHGLiLZ
         XVWmK+I3VAdEtdSrSqwyaivu8lPh0HC+6QWnMKgz6RiHi5gdGc6RbzLJ+3xqqakcmVH3
         w0Ty+ZCYS5a6idiFH3KM38HlwM5qSqFT4MMQfiETcQv8wc/NEqGzFlne1Wb6pUT8yR1v
         cfjWj8Lc7nSaspmZFZ9pJuupqXTg36X3IkDRHiLxxWjZLwjqS3gXph7h5g4+C0wIYMOs
         J4Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780831836; x=1781436636;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MRySgiTWfJabjMicfD7hcpZ6ySYoQUNxJP9qu6eB8rg=;
        b=fZHfAoOCCVoekjnO0xIHsphBvmOa6DqXa66YGPH4PZdNJuAEk0J7TL062+DOgEmte1
         v1qpXKQhRxlArAG2YX95BueZw/5ui1cM36GJrKi12vvvlNflubMHhTSOeaMOMdf4Ignw
         k0Xb73JujAw/BkB1T2ZVPERdE+DSeSUPXFH1oBLUVYITPwz5XqnoYLv/9Oxfl1v7yuAN
         5UkV5Iadn0KBRvFZA+cA2LtvSvXr3yu/RbddeM6rYrGH2YnTt2BZLGuDnzbTUzGJunPc
         AZcqZTvcOZcIiNPLALJuDkn+UN6zQUnNPW5FUnXdDF6nzM50jwrmX24MVVSElCsytiuF
         azkQ==
X-Forwarded-Encrypted: i=1; AFNElJ/ou2ruTLWomWIJPuoccFrVujcO8e0uCHwZoqHTWe4RjWIB5Xfsuf4enJ8P10fe7o1m/CthpnqPavDtQ4Ds@lists.linaro.org
X-Gm-Message-State: AOJu0YyUMNrYr5JPweGp4whof9fv36uSiks4cuMNwQN2TXb+1VykDxnx
	+lZMUJCeE+8HglIKp0gag1+GMfd9+6Ax+Q2EDzA/SQRFfs1TgDMVuw+0aS58XNuhoSYiGsc0gef
	IyU3DQtg47ehfJ43NbDXeytlK+b9l6vE=
X-Gm-Gg: Acq92OEKyr9khstAttFCZkZ146gIpo32BpxEi7EWESUvBmZkTJOS7/TMEFVX2zv/RK2
	MMpJ4PgmomMrTyox50eP1161lF1Yn0LexGnWWc4d2FqPyXem7E2wjLFSKmEv4/5BNNt/28ZiAKG
	m2bDjrvJz6i1GmmeqyLJ3Ol0iNfmjrzX4mbRGGJpL5/xuN+05F3WGx6gp4pr+0dIzDfAK6M7SXm
	SrOQWMZB8OLVvQvzzYowuwC1fCpaZ+u2370PcpgltFB/1KvMtjSQioVw3Nx9RU6PnE/A2PcEFbP
	yYlrsjw4NxK74s+ppgEw+CUuFCpGxJAVu/+u6auf99RtPbUGk0ZJcv2P5TnBzgjZh9mKhJps7E2
	kuIwwBW0NM0XZzQ3MBnuG79amkLzXj3PyeQ==
X-Received: by 2002:a05:7300:5723:b0:2ea:5057:a320 with SMTP id
 5a478bee46e88-3077af4a612mr2921241eec.2.1780831835929; Sun, 07 Jun 2026
 04:30:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260604192740.659240-1-lyude@redhat.com> <DJ2G8D0N6EK7.2PDDSC28O8K4P@nvidia.com>
In-Reply-To: <DJ2G8D0N6EK7.2PDDSC28O8K4P@nvidia.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 7 Jun 2026 13:30:23 +0200
X-Gm-Features: AVVi8CdeC5gDKTC7duruJvRpgjli4FYxW2S1H8-VJsB3l-jVir5nc-87EthTwdQ
Message-ID: <CANiq72==HqQnNdemJOrDwP6dCzz1KBs977MmgjLbssDstAG-Sg@mail.gmail.com>
To: Alexandre Courbot <acourbot@nvidia.com>, Danilo Krummrich <dakr@kernel.org>
X-Spamd-Bar: -----
Message-ID-Hash: 4H5O2LW5OKUV3ACTM2FQFN6KHA5OJQPN
X-Message-ID-Hash: 4H5O2LW5OKUV3ACTM2FQFN6KHA5OJQPN
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lyude Paul <lyude@redhat.com>, Miguel Ojeda <ojeda@kernel.org>, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v18 0/4] Rust bindings for gem shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4H5O2LW5OKUV3ACTM2FQFN6KHA5OJQPN/>
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
	FORGED_RECIPIENTS(0.00)[m:acourbot@nvidia.com,m:dakr@kernel.org,m:lyude@redhat.com,m:ojeda@kernel.org,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_SENDER(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,kernel.org,lists.freedesktop.org,vger.kernel.org,garyguo.net,amd.com,lists.linux.dev,linux.intel.com,google.com,ffwll.ch,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AAD69650746

T24gU3VuLCBKdW4gNywgMjAyNiBhdCA0OjA44oCvQU0gQWxleGFuZHJlIENvdXJib3QgPGFjb3Vy
Ym90QG52aWRpYS5jb20+IHdyb3RlOg0KPg0KPiBUaGlzIGlzIGZpeGVkIGJ5IFsxXS4gTWF5YmUg
d2Ugc2hvdWxkIG1lcmdlIHRoYXQgb25lIHBhdGNoIHNlcGFyYXRlbHkNCj4gYW5kIGJlZm9yZSB0
aGUgcmVzdD8gSSBzZWVtIHRvIGJlIHNlZWluZyB0aGVzZSBsb25nIHN5bWJvbCBwcm9ibGVtcyBt
b3JlDQo+IG9mdGVuIHJlY2VudGx5Lg0KPg0KPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMjYwNjA1LW5vdmEtZXhwb3J0cy12NC0xLWU5NDhjMjg3NDA3Y0BudmlkaWEuY29tLw0K
DQpJIGNhbiB0YWtlIHRoYXQgb25lIHZpYSBgcnVzdC1uZXh0YCB1bmxlc3Mgc29tZW9uZSBzaG91
dHMgLS0gQWNrJ3MgYXBwcmVjaWF0ZWQuDQoNCkNoZWVycywNCk1pZ3VlbA0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
