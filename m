Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Mb2DwMB4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E55410DE8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15E7F40972
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:32:18 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by lists.linaro.org (Postfix) with ESMTPS id B055E3F8E9
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 08:23:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=KAxcr5tV;
	spf=pass (lists.linaro.org: domain of viresh.kumar@linaro.org designates 209.85.214.172 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-298250d7769so4520025ad.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 00:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764231787; x=1764836587; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=w6hBnm1WTlzOV43F8Rg8NMwBpW3sVO5XoameZRwTC+k=;
        b=KAxcr5tVE6UqbfToPG4+D5ZtRRGuBK3fZ8Ndho8zTESbKvFXiGKYNejcK1pfYeAFAw
         rs8aUn9zT3DG/pL6vlEqQz6/N4gOu8DO1nV1pQXH4pzrcHfBgvlWoMPaoOanl6NIHx9D
         XtRFoB/nvwBnS31gvYk+F2dG0lCg+SVnnlcOJvciYt+HLpmeOrrKhfj3HHTF0Ta/lSbY
         XAJg6RRurSoSDK+eIeTdvb12sc1d+E24xPo/JPYvB4slls7C70YCwUIHVHGO2LvQnYIO
         xtWdRalR9y98UhvNy1ecPX7i5cv6GHhgg67d38cvZ6Uq7ggjqQG3y2gdYeI8cPiVgYxc
         OhIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764231787; x=1764836587;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w6hBnm1WTlzOV43F8Rg8NMwBpW3sVO5XoameZRwTC+k=;
        b=WCXoD9l+TPpPaHl/4Ki48g/Xd9VMAiDNCSJmefa0KaYB0k0tUwImdFPYM5D6YuBv4L
         YIz8OM3mZ5yvYXsbGAK2HB2V1k26JibCHiswMaxSCEQdxF0A7da0bynwcKgqE9cwaoJz
         QLZB3vtqJAQmvHUG/XT2puqvos2McMK6Js03kW9gB+4vnJDhS06qs13gvW4hblcI2MN7
         jfoVXGAy0iJRi8eJJHKm/0sFVePawYlDMMObpNCYTPxd/8rUIZiMWvpmyLwc4FtNhzMK
         JVeTy9QNbmSgb/XgozRkZRjDUAEIwLjRdgNJ9XQ2xYba37sLwRlwWk9/4vw1w6mG4vmh
         wKlw==
X-Forwarded-Encrypted: i=1; AJvYcCVr/t2aahBCbnQzYn3DEXHn6FXWKqO/VzkI/UpwgXNhY6/5YJPq8X2gvhRtk557RJEvDuGkuc3ntouLQ9b2@lists.linaro.org
X-Gm-Message-State: AOJu0YxE2pzl6kh+lD9QAHbJ7SoDLH6ZD3vDRLIoEomVxVrqls4XfjsX
	krOnlBMG4UxBZ+CGIaT6YBpTyoJR08NiY5v+mG2LoIFML9b6vl5CldkwyxUi8J0198VCFQ==
X-Gm-Gg: ASbGncsrxlqJBv11L+n7qbfkS5nR/YqYdhZozxTs3S/ktOtcllf4da99IXsXbKPJH3Z
	PJ2i00PiSvvhURiMpWkbZ15sXg1E0vVZbZamvyMPtWt0DswBiKW/eRtW145+lFC05jKrr0rS4w8
	cE+RAMcJvYCCHNM+r851tWRPkWle8isaAlVg+/XxJzApCdEqgybby1P59aFWYjln/i2VtefQS9u
	SyNDUGxmPLqMNKjsruGgqt+DjPdcM0gKRyWqg/Qg01jVAroOEAxH14GJ0XMxZoB/6VLb4AyUTxH
	WW6SNB2ar8vKL01PcSuuxS/6qXLUF/nmWrWQ02URdV9h02mSzO1dzzR0aIOr56EwxlCXHUXoJwq
	t+OfI4ZheFlm1Z6ql17e8o2GlagywLDabjt1WnEenLNUEGKs3vEDKa+biQ4Iy4XTbr/QzStKXoV
	HjfVrhoCH/mw0=
X-Google-Smtp-Source: AGHT+IH+qULnt5IiDwVZs4RSPJiSUXQVGTLH6/7d6HCRpJINYmlZt5FbShE8rGka4cxnUizRSOqJTw==
X-Received: by 2002:a17:903:1b43:b0:294:cc1d:e28d with SMTP id d9443c01a7336-29b6c50c704mr246709565ad.25.1764231786633;
        Thu, 27 Nov 2025 00:23:06 -0800 (PST)
Received: from localhost ([122.172.86.94])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-be4fb2490bcsm1176810a12.2.2025.11.27.00.23.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 00:23:06 -0800 (PST)
Date: Thu, 27 Nov 2025 13:53:03 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <4o3meb52jvgjrtqswpmrgkgjhn4zbzkvmyen4zqrkzeypsthpt@nt4vm7jwqash>
References: <6202945f4af2d10e0fb6602b25ff9cb454c1ee85.1764229204.git.viresh.kumar@linaro.org>
 <8d5ae067-e1bf-46a7-9137-d5936197ad5c@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d5ae067-e1bf-46a7-9137-d5936197ad5c@amd.com>
X-Spamd-Bar: ---
X-MailFrom: viresh.kumar@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: C6EZKWXWVYU3M3RJ36ZZDJC2QWWAAQTB
X-Message-ID-Hash: C6EZKWXWVYU3M3RJ36ZZDJC2QWWAAQTB
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:11 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: add no-op stubs when CONFIG_DMA_SHARED_BUFFER is disabled
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C6EZKWXWVYU3M3RJ36ZZDJC2QWWAAQTB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.49 / 15.00];
	DATE_IN_PAST(1.00)[3367];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[viresh.kumar@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.661];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 13E55410DE8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 27-11-25, 09:07, Christian K=F6nig wrote:
> On 11/27/25 08:40, Viresh Kumar wrote:
> > Move several dma-buf function declarations under
> > CONFIG_DMA_SHARED_BUFFER and provide static inline no-op implementations
> > for the disabled case to allow the callers to build when the feature is
> > not compiled in.
>=20
> Good point, but which driver actually needs that?

This broke some WIP stuff [1] which isn't posted upstream yet. That's why I
didn't mention anything in the commit log, though I could have added a comm=
ent
about that in the non-commit-log part.

> In other words there should be a concrete example of what breaks in the c=
ommit message.

There is time for those changes to be posted and not sure if they will be
accepted or not. But either way, this change made sense in general and so I
thought there is nothing wrong to get this upstream right away.

> > +static inline struct dma_buf *dma_buf_get(int fd)
> > +{
> > +	return NULL;
>=20
> And here ERR_PTR(-EINVAL).

I am not really sure if this should be EINVAL in this case. EOPNOTSUPP still
makes sense as the API isn't supported.

> > +static inline struct dma_buf *dma_buf_iter_begin(void)
> > +{
> > +	return NULL;
> > +}
> > +
> > +static inline struct dma_buf *dma_buf_iter_next(struct dma_buf *dmbuf)
> > +{
> > +	return NULL;
> > +}
>=20
> Those two are only for BPF and not driver use.

Will drop them.

--=20
viresh

[1] https://git.kernel.org/pub/scm/linux/kernel/git/vireshk/linux.git/log/?=
h=3Dvirtio/msg
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
