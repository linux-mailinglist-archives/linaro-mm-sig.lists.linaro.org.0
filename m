Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7F185B227
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Feb 2024 06:12:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 188864517E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Feb 2024 05:12:17 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by lists.linaro.org (Postfix) with ESMTPS id 06DD544715
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Feb 2024 05:12:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=VJ16ErDF;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.167.50 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-512b84bdaf1so1874524e87.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Feb 2024 21:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708405921; x=1709010721; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ho97+Z9XyV0V3EKFp1nj4w01pW7dIUQTWF51opt+P0k=;
        b=VJ16ErDF+b6M25FMGFhAs6oMW2MFU1odSMEnbdcaOgrqi8r5ZDqRM4WGc4hKQGjP44
         gAgugAHZ8PF8gOVsBO1bnRoWda3yfNQ/R8wQiAG8FQGZIbFDXhAkB6LaZv19OdY4a0Wl
         Ke8j2RQhCGC2kCRIdNGMvsl+tQYprBGnYa0hcfBRIiBX4wvs0icJ3vUMDkn/LdFa3AlO
         cuSZsxJk7VmVZ+E7MEVxCdkH8yy4tgD3q1NIE5+tkyERgKHeIE8vupdLrC2FHqlOQFWY
         q4/DmmJeO+Cgx0h+OBPyQzwaXJJTRLVrXCaoKPLgmqkLAzxdnjxN+9urPQKmHjCnmNT1
         +DLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708405921; x=1709010721;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ho97+Z9XyV0V3EKFp1nj4w01pW7dIUQTWF51opt+P0k=;
        b=CCRxg0iyunFSeA54Yk9PKcte4BAJV//yeeEsm9y9fW+wIgEKXGbHfyH7QGyJcGRe9V
         UX2JfPmXAhpITaJp2FYGF+4rOBqpNHISZLNys6zJtjEzMoPgCFM+SLlBlD0xy7x/8V5W
         MRzvteWdpWHiQIT+rZN7WIJJg/dGUli/kM31GKec9i1jghvc9JqtnHSc0EVM5LfahQzJ
         brXhTn6RxeO+5a3pHwTvGhK+KK4OKZPu/pKL/SoqzTxd+lC3lt2AlA5HSmRB9kPsQ1Nt
         EupP5v9sBKCl1NEMUiwC1eC0EymDnHnRsaeaLphzCYSb84yzuGWx3bBEC0p04M9OsNTE
         pabQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1LREGKrIXayg/+mRwrrPN+QO1kYtzi6hT3XCO8UORT6UL2Fe6k9WORBfnVoIFiJ2gVIS21yvLKEPcvoWq5l6fcEWMuVHmd5PpMlLQDfA=
X-Gm-Message-State: AOJu0Ywwdm9dkDNaE+t0D9P/2mZIDVkNuzIdfr1T+0ILEYPTelGwAwhS
	i3Hpn9CyDHjUzEBncben4EVogQRbCUHF2OfC6NoVyROgO8wNUr3oXbHyf82mzP0bvQ==
X-Google-Smtp-Source: AGHT+IHbqUb2KIKvVKoBjpRJDXqck41PHOxDu5LU7Bz4meGHEBaEjCnZ2bAV7RwH8TMbR2gh5uA+eA==
X-Received: by 2002:a19:f706:0:b0:511:9746:6794 with SMTP id z6-20020a19f706000000b0051197466794mr9220992lfe.60.1708405920674;
        Mon, 19 Feb 2024 21:12:00 -0800 (PST)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id x19-20020a1709065ad300b00a3e786d8729sm2082419ejs.168.2024.02.19.21.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 21:12:00 -0800 (PST)
Date: Tue, 20 Feb 2024 08:11:53 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <bc59a084-73bb-46a8-b02b-0ef990020458@moroto.mountain>
References: <f75d0426a17b57dbddacd7da345c1c62a3dbb7ce.1708278363.git.christophe.jaillet@wanadoo.fr>
 <91d964c2-3d5a-4e96-a4db-e755455c5b5c@moroto.mountain>
 <3fe4c327-b69b-464e-8e4e-005fa1813279@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3fe4c327-b69b-464e-8e4e-005fa1813279@wanadoo.fr>
X-Rspamd-Queue-Id: 06DD544715
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.50:from];
	FREEMAIL_TO(0.00)[wanadoo.fr];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: LN2U2MBSCXSU3OOJLJ5RWAR4KZ2EBM7N
X-Message-ID-Hash: LN2U2MBSCXSU3OOJLJ5RWAR4KZ2EBM7N
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: gustavo@embeddedor.com, keescook@chromium.org, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] udmabuf: Fix a potential (and unlikely) access to unallocated memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LN2U2MBSCXSU3OOJLJ5RWAR4KZ2EBM7N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 19, 2024 at 06:59:02PM +0100, Christophe JAILLET wrote:
> Le 19/02/2024 =E0 09:37, Dan Carpenter a =E9crit=A0:
> > On Sun, Feb 18, 2024 at 06:46:44PM +0100, Christophe JAILLET wrote:
> > > If 'list_limit' is set to a very high value, 'lsize' computation could
> > > overflow if 'head.count' is big enough.
> > >=20
> >=20
> > The "list_limit" is set via module parameter so if you set that high
> > enough to lead to an integer overflow then you kind of deserve what
> > you get.
> >=20
> > This patch is nice for kernel hardening and making the code easier to
> > read/audit but the real world security impact is negligible.
>=20
> Agreed.
>=20
> That is what I meant by "and unlikely".
> Maybe the commit message could be more explicit if needed.
>=20
> Let me know if ok as-is or if I should try to re-word the description.

No, it's fine.  But in the future if there is an integer overflow then
lets mention in the commit message who it affects or what the impact is.

regards,
dan carpenter

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
