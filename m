Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C230DABE8EB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 03:20:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9391144970
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 01:20:40 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	by lists.linaro.org (Postfix) with ESMTPS id 489BB44526
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 May 2025 01:20:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=aG9q1DW3;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.210.172 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-736c277331eso6360058b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 May 2025 18:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747790428; x=1748395228; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jnKAj1wWT/aTEmBr0+5z/BZJBnA/nBahrmjpd0G356E=;
        b=aG9q1DW3wzVIy/9Pvj1hz6SSj9YvelVBk4J9IroqiSSfb8D7VKCtQdq/s5faGgsteT
         xeHX7A6+05jC7mmfFGjtNNYIy5n4Oq1bOumay3mcbXb6QFWtjK3h2tbA3ISQF3okq32B
         PyYeL8bY7Ymcr8J1jQFLRggcd7c+k8UDf5/EDzgIVtSzmv8stvWHQXzzL/Z+1Gl/V8VZ
         a17AtxaMk2ZX6esc7idE26Zp/EU7AhGREQo1khboDHsQMSPd44es/h7MNuyj7auDzE7P
         J9GS1vv4bVu84pnAXugtcIKxExR5OxD48uzQDs8YVPCIAQYfBlWtf7BZ5QcaqoEfpVzB
         v9Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747790428; x=1748395228;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jnKAj1wWT/aTEmBr0+5z/BZJBnA/nBahrmjpd0G356E=;
        b=xUK+nimKSbDtN4nKYkA2uSeOBrRcXYGgWfdun72Z1cae5hf8FmwRUxOwlbr69F3YQj
         K8IweMt9PmaWMwzNaub7rNQLbYCYydw3shbdESxRYqO+iD6ZSzNrzJeJLtl+b+Gxo5Mv
         lNpXokzbvhNLBQpg7bOTAQ0vqI6ofucxP5rKku3VEsVfDEisnbIuc94WKr0rcNa4zLxC
         ygOVjN/7QUmmJMXJuqn3+tEn1bODWkNqOgSxrVmD2QEhgLJRu2AJphbDx5WVf+mHScYL
         UGeIrSoJw1Oga6GK0Z1C5x5srLqkQznmV/j2R9O+Iv3hZX6ZkqIWXhqm5/4AGDcWPmME
         6ogg==
X-Forwarded-Encrypted: i=1; AJvYcCXFamPixIusotYu8oWF+G84eFINX2MH7WdSlDohJIoM9Gw0v+JyUbDTRCGGp/PH21TQx6noLIiut6UBu2be@lists.linaro.org
X-Gm-Message-State: AOJu0YzYQeAFwvMqUZNK8lEpHCzEPl7s7siaQt59R6Pe1/71N+TBLCem
	4/k5hGdXhaYNuEWdOO1rhTvvVrnFKLTedtHJSSF6priGwo/XO34gms6I
X-Gm-Gg: ASbGncts12ho222aPkGyPKPx4g7+yTB9Iw6XNhJapZHyBL5t6Hi9TmL6peGK+0lMVBy
	yc65EhQEjsW4nbbVNdYr6q3Nvs6mXLVyoGBHGELCW1B+z6dcK8AdlKYbaNc/j88fgtab79K08PP
	UezzNHO2xDqq7IM9/fFOa3q7tiPrVwg4wXV1IXq5cKxvEjc3b5mwVqYJlD7o2jfNqo1yasPjrZV
	fj57j3XghB9HDUnqCJ8HxEVQhmTfLBrdBFdsnsOH0lFaMFgPEGdaNiiOUNU/RPvjJvlxyq0PT3/
	9CyqHdtvsXVML77oQIgYCfEju0LXsQy7dl3boG9YMCNk7ZmKCuU=
X-Google-Smtp-Source: AGHT+IGRcGw4PVFj0KvWzf8iJ8NGOPcjIwY8wENV5Bey81drCVnYSC8vD3YByIiTH8J/jVDLY5vGpw==
X-Received: by 2002:a05:6a21:7001:b0:215:e8b5:3df with SMTP id adf61e73a8af0-2165f6458a4mr25920161637.7.1747790428180;
        Tue, 20 May 2025 18:20:28 -0700 (PDT)
Received: from archie.me ([103.124.138.155])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a98a33c3sm8872598b3a.176.2025.05.20.18.20.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 18:20:26 -0700 (PDT)
Received: by archie.me (Postfix, from userid 1000)
	id 390A344FBDF7; Wed, 21 May 2025 08:20:22 +0700 (WIB)
Date: Wed, 21 May 2025 08:20:21 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Maxime Ripard <mripard@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Jonathan Corbet <corbet@lwn.net>
Message-ID: <aC0qVd1D_L-LtbxC@archie.me>
References: <20250520-dma-buf-heap-names-doc-v1-1-ab31f74809ee@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20250520-dma-buf-heap-names-doc-v1-1-ab31f74809ee@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-10.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.210.172:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[103.124.138.155:received,209.85.210.172:from];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 489BB44526
X-Spamd-Bar: ----------
Message-ID-Hash: QOIBJ7E7IVT3DM4JNWNXWTPO2UDAHANX
X-Message-ID-Hash: QOIBJ7E7IVT3DM4JNWNXWTPO2UDAHANX
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] Documentation: dma-buf: heaps: Add naming guidelines
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QOIBJ7E7IVT3DM4JNWNXWTPO2UDAHANX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5306924368927097796=="


--===============5306924368927097796==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NypwNQ7lUsvPyCso"
Content-Disposition: inline


--NypwNQ7lUsvPyCso
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 20, 2025 at 12:00:53PM +0200, Maxime Ripard wrote:
> +Naming Convention
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +A good heap name is a name that:
> +
> +- Is stable, and won't change from one version to the other;
> +
> +- Describes the memory region the heap will allocate from, and will
> +  uniquely identify it in a given platform;
> +
> +- Doesn't use implementation details, such as the allocator;
> +
> +- Can describe intended usage.
> +
> +For example, assuming a platform with a reserved memory region located
> +at the RAM address 0x42000000, intended to allocate video framebuffers,
> +and backed by the CMA kernel allocator. Good names would be
> +`memory@42000000` or `video@42000000`, but `cma-video` wouldn't.

Looks good, thanks!

Reviewed-by: Bagas Sanjaya <bagasdotme@gmail.com>

--=20
An old man doll... just what I always wanted! - Clara

--NypwNQ7lUsvPyCso
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCaC0qUQAKCRD2uYlJVVFO
o0PWAPkB0WhcqMYxc22GRsTrNHTiOOPmCuqttpkhvh7zJak34wD/RfEvLDvJd4S0
gd404Ak39Db39XlwIwe0XTZMK8hm4AA=
=6/NP
-----END PGP SIGNATURE-----

--NypwNQ7lUsvPyCso--

--===============5306924368927097796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5306924368927097796==--
