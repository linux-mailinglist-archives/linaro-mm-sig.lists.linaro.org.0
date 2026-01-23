Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBRhFiQN4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:24:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0757E411AD7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:24:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 218C043C83
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:24:03 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 928813F6FF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jan 2026 13:25:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=HusFQjI5;
	dkim=pass header.d=redhat.com header.s=google header.b=jMJ7aQjY;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769174723;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=dl7NlkiIvE4aCaKk0Pre5K+Ti7kNdoTw5jT1Cl5ZZAE=;
	b=HusFQjI5D9Xt8EfLtJqPrl7nEzWku4PZRJ0v3Jzeq3QRchoPH80i8QDR4DJ5/68hqypsuI
	qxmQvggPFL8mlyxYVNe15bpQBeXoxULl2UGI62RdcTrDDDWJouMG611PnuxG7k2V9OOTNy
	ElSQDplGe7gOlJ54QMHBMRgoeqEQJvY=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-116-UVWx6O43Ot2PKeM8BDq_lw-1; Fri, 23 Jan 2026 08:25:19 -0500
X-MC-Unique: UVWx6O43Ot2PKeM8BDq_lw-1
X-Mimecast-MFC-AGG-ID: UVWx6O43Ot2PKeM8BDq_lw_1769174718
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-47ee9a53e8fso15961275e9.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jan 2026 05:25:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769174718; x=1769779518; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dl7NlkiIvE4aCaKk0Pre5K+Ti7kNdoTw5jT1Cl5ZZAE=;
        b=jMJ7aQjYWSl1XzpwokXedY1GApdxxNbTEN4aZjHEXWYMV8ZV+4FRt2sdriXA0teyqT
         J3XSu459uSb3bpM3VmLhPFjNRnggcWpWmiakUNqjpjIUg+N/XDrQS0ApSTGKe70miBZ5
         M0yLJVSLsjl3BBQ1/FGgY5u2N42E+z1iwz6Qdd3TScLyQedXiYZWDsaKYBwI0zvFLHkY
         t/ys1DNH2f/C/tSu1TCe//8zT2PF1aDk3w0CVIEwlDb4keiGYoT0JwXOxt52m3gr/1Ww
         MHwhIfc44OXB6lhTKn6ef0iUUmvreLqeg/RezfFgak+hf5qU/tdxHE0BbNwMs5oFb9cO
         Klag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769174718; x=1769779518;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dl7NlkiIvE4aCaKk0Pre5K+Ti7kNdoTw5jT1Cl5ZZAE=;
        b=ZNu+HVOapToMBBEELvDTB7S4B/rxwXGqdnGIftHKYljAOFecpppE/4YSQ2CzGBzZEW
         FTbTQs+W5u19/dEhBaWkpq88gHYvap1ealXxLhC3HduFvxyZHxLmLA+BbnyZsHiLfvkD
         3WIUIk6nhQ/LZ4TaEoY41dTOVatHS+G+eb12YkUaNr5tlJRdmlI6WHhDFTCQrL28dSfJ
         dbVecA/T4f5sDJn/tLKDOnCl/dSUd10Z9fmOrbb6pCqXAZ5iwX8xOwu2wyN2uU7ybmKP
         XSS5zbYYVgVQWDJVSKyGDmIc0wQUwVAWalwAFfk1whVYBfcZeTGuu8U/nUEBC6sjFu6C
         5DMA==
X-Forwarded-Encrypted: i=1; AJvYcCX4VvIBcGvGupYRsexVG9HRW9eOJ73Dfe30fP2grPqyqFm0FLR9ytklvxlH6octJnpoVSol1Xgtb/qG9XAf@lists.linaro.org
X-Gm-Message-State: AOJu0YzERyvM5OhcP8MoykMl+fvpvTrQ7ZwYIhjwP4pZob0hLndxaapu
	ziWDfEuwU2qBBWBZt0njNMWAAusGPZCsUTvVZ6w/rQVBSD05Xr8dN0i9WXUmxVwNmFPbzWZwps/
	ZRjW8PfA2H6VX4X4jvX+DcCSY6kOFR/O0psyGbTM8AqAvxB9JFOcC2PBgaSj/WxBYsyKM
X-Gm-Gg: AZuq6aLOaFrwJSAE8fayDlwTyiwk85x9sBmN9p/h7Fc2xgbEzhggbzxfRDsGzK2GyR3
	f19TM7hEWkNQi3/+jcJ3r7wU9n9cGvi1M4OEpeigTNJJsqm19DN8XpeQIgbNAdRe8YYYWpmLItA
	p03Y6paYLGAKBqTouIYiNrhpmHsO+x0fzV95kw5G+Am4ITkqpjSGE2GVURlb4dpzGz0FKI+Dphd
	9nM0qy7rO0840QEw3E8ChypWcuFeJ+uSFaPMXS1B7TdFqoNvzm0OY2oshCE/4wx5Ke+loB3eEPI
	4neG7JrvMEqGEbHF3tXd0GwwLPX7tBa1NivKsa+A82QFylE0AVoQ4zzCK1IfDA==
X-Received: by 2002:a05:600c:c16b:b0:477:a978:3a7b with SMTP id 5b1f17b1804b1-4804c9b2113mr49821845e9.22.1769174718316;
        Fri, 23 Jan 2026 05:25:18 -0800 (PST)
X-Received: by 2002:a05:600c:c16b:b0:477:a978:3a7b with SMTP id 5b1f17b1804b1-4804c9b2113mr49821235e9.22.1769174717712;
        Fri, 23 Jan 2026 05:25:17 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804dbaad79sm21251445e9.9.2026.01.23.05.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 05:25:17 -0800 (PST)
Date: Fri, 23 Jan 2026 14:25:16 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Thierry Reding <thierry.reding@kernel.org>
Message-ID: <20260123-active-witty-rabbit-0fc5b9@houat>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-5-thierry.reding@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260122161009.3865888-5-thierry.reding@kernel.org>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4AIGI6LB4H34KRXRIJ5DOUAZAOCJQWAQ
X-Message-ID-Hash: 4AIGI6LB4H34KRXRIJ5DOUAZAOCJQWAQ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:28 +0000
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 04/10] mm/cma: Allow dynamically creating CMA areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4AIGI6LB4H34KRXRIJ5DOUAZAOCJQWAQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1883893420268169090=="
X-Spamd-Result: default: False [2.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[1994];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.729];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 0757E411AD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============1883893420268169090==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="equ2x5ui66msv4bz"
Content-Disposition: inline


--equ2x5ui66msv4bz
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 04/10] mm/cma: Allow dynamically creating CMA areas
MIME-Version: 1.0

On Thu, Jan 22, 2026 at 05:10:03PM +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
>=20
> There is no technical reason why there should be a limited number of CMA
> regions, so extract some code into helpers and use them to create extra
> functions (cma_create() and cma_free()) that allow creating and freeing,
> respectively, CMA regions dynamically at runtime.
>=20
> The static array of CMA areas cannot be replaced by dynamically created
> areas because for many of them, allocation must not fail and some cases
> may need to initialize them before the slab allocator is even available.
> To account for this, keep these "early" areas in a separate list and
> track the dynamic areas in a separate list.
>=20
> Signed-off-by: Thierry Reding <treding@nvidia.com>

AFAIU, this won't create a new cma heap when registering. This goes
against the recent work we did to create one for every cma region.

I guess, since you have a driver that would explicitly handle that
region, we should create some kind of opt-out mechanism, but by default,
we should still create such a heap.

That being said, it's not clear to me why the heap driver uses CMA in
the first place.

Maxime

--equ2x5ui66msv4bz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaXN2tQAKCRAnX84Zoj2+
dtsNAYD+XKsLdRQjkWGztlo6ccvGIarpCsAjHJYFv0zPbdpfdWvfyLFS1lY/kTQQ
0g9g6Z8Bf0j4St2GiD6RINFxEH7YvowARYnLD4kKLHV0CjY6XFcfRV2lK+cZmof9
IIFG/01OiA==
=as/Q
-----END PGP SIGNATURE-----

--equ2x5ui66msv4bz--


--===============1883893420268169090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1883893420268169090==--

