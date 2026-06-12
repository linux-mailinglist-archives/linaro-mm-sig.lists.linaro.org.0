Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bsf3FZJePWoh2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:00:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E58E86C7A34
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:00:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=GdpxwRGB;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B47C43CC3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:00:01 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 761893F97D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 20:17:37 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A9F2B41665;
	Fri, 12 Jun 2026 20:17:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E2371F000E9;
	Fri, 12 Jun 2026 20:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781295456;
	bh=pJzuNVWTNf+53sy5yuKPcqhP0sKI2LYYj8cvjNu/tSM=;
	h=Date:Subject:Cc:To:From:References:In-Reply-To;
	b=GdpxwRGBrf+qpXAR4d0Nz/svA8GnlSNp4xm1JkRSb71qW3Vv6kndMHbj1bAUWD/NM
	 clLsSWhWXgMw0G4JPYmRM1CVs9R4G39GEuZpZ8fhyLOmcvFBNi/AdHdY76Jjw9J8le
	 HVVbR0yVWHjAT7t0VQT1yh5x+i4wH10aW4joDeSLt0a5oqmAlMnSdwwk6OBm4FMmF7
	 ap9Q4T0B+POpHfHaBJVwAdSxLuXzvSiaMfoJvQP2RVNluhx8jpaR13jfqs3ewInCWY
	 7PYGYcg87etPCjusox7PGggnG6MQ9ng+hjaQeZQ3PMA9sVyoKm3sDk98mVHBeK8PkO
	 AN9JkZRDDvjNg==
Mime-Version: 1.0
Date: Fri, 12 Jun 2026 22:17:30 +0200
Message-Id: <DJ7CJCZRHT1R.3LZDILZ7HTXQ3@kernel.org>
To: "Gary Guo" <gary@garyguo.net>
From: "Danilo Krummrich" <dakr@kernel.org>
References: <20260610162433.923550-1-lyude@redhat.com>
 <20260610162433.923550-4-lyude@redhat.com>
 <DJ7AXOH0W92V.1L1869KO4C1H9@garyguo.net>
In-Reply-To: <DJ7AXOH0W92V.1L1869KO4C1H9@garyguo.net>
X-Spamd-Bar: ------
X-MailFrom: dakr@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UKJIMPSJW3M3AVEKSSII6TXLYOUXAIOH
X-Message-ID-Hash: UKJIMPSJW3M3AVEKSSII6TXLYOUXAIOH
X-Mailman-Approved-At: Thu, 25 Jun 2026 16:59:03 +0000
CC: Lyude Paul <lyude@redhat.com>, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Alexandre Courbot <acourbot@nvidia.com>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v20 3/4] rust: faux: Allow retrieving a bound Device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UKJIMPSJW3M3AVEKSSII6TXLYOUXAIOH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	DATE_IN_PAST(1.00)[308];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:lyude@redhat.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:acourbot@nvidia.com,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dakr@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[redhat.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,amd.com,lists.linux.dev,kernel.org,linux.intel.com,google.com,ffwll.ch,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dakr@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E58E86C7A34

On Fri Jun 12, 2026 at 9:02 PM CEST, Gary Guo wrote:
>> +impl AsRef<device::Device<device::Bound>> for Registration {
>> +    fn as_ref(&self) -> &device::Device<device::Bound> {
>> +        // SAFETY:
>> +        // - The underlying `device` in `faux_device` is guaranteed by the C API to be a valid
>> +        //   initialized `device`.
>> +        // - faux_match() always returns 1, and probe runs synchronously (PROBE_FORCE_SYNCHRONOUS).
>
> Please quote all code with backticks.

As far as I'm concerned there's no need to do that for things that are not
rendered anyway. But also feel free to do it anyway of course.

Thanks,
Danilo
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
