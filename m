Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFA0859E7C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Feb 2024 09:37:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16E563EFFE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Feb 2024 08:37:33 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id BFFA33EFFE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Feb 2024 08:37:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="x//DKlHD";
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.218.53 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a28a6cef709so392011666b.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Feb 2024 00:37:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708331837; x=1708936637; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ojbVELbGUO0Fdw1LO3aSx5BEslcvMdmSrG39OaZaxOY=;
        b=x//DKlHDjthnS645AqTQH2t2+hzkMmyhIqV7DryrPHqgkai31q63mA7ByU/k1RHQmA
         30NxVXHfXHRBoRNyKe0CxMw76lACl1cSaaG/09X0Bsg5pQsjZ4l6K7RRQ690K7WpcawL
         8judcfkIvU7oOef1JZIPXnea1tBEYGtx37wi720oeIvq+U++A11F5X73yZ8WG+JQgIKw
         UTe9YdgcO8+x86WiuqmKEp611eai/lD/mVQggG89Cg3GbJgowN1M5mTnTh9M55macJHL
         11p/+u843UBsiikeHiEdR78SVRbWr/b1UybsF0PQVlqfLO4WnBb0dlSnXl4BzJKLBoNU
         bcMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708331837; x=1708936637;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ojbVELbGUO0Fdw1LO3aSx5BEslcvMdmSrG39OaZaxOY=;
        b=jtk9j1/k4FP6hGQ8U3ZjoN4YplpmtJZ1caS34+cWFWEXohlCso8XPN/w/CV8ErFnoz
         fkwUJi5nLwTIxwTF4AXH3eRNCclTIHt0+R0dszgxIvOGH8sataYTCwG4JacRHlNUSz6w
         9DOME3v7elZ/zPZHeJ8wM662krS5CPRzwygccKlEOs8qy4tVy37E+1l/oN3BJOo/8gO+
         mpE9EfYOpQYYNuC5qcwjgwoDQXoMl8dgDpYAzA3wrhNba2nyyOiE0DorGws6YfuV2bR9
         75QFJd4xbBQT4PwkWvzqrHYRKBuCJLHZm8RP9cYB9gwYGP2WwzV/3WUAK2lB93mNSLr2
         xLgA==
X-Forwarded-Encrypted: i=1; AJvYcCVCvsXqxzGTx9YVgp5o5IwRPvPNotu4sz+dCUQGA4ybS02z5OYYdlZD2vmMW2Q7iqZDDHOMJ3OFuoiHuVImqQBUDmOGjYyPnO0H2qe+5hQ=
X-Gm-Message-State: AOJu0YzQ1wixarCLw5jpX1u5WSwQB3E2Es9+Kor9+fU8N3Hw1VzAPIfs
	J7zwlrrylvb8CxAuLUrXlQPOAv8C/bSZjm8X6+TuD99xF57o0XElgwTBODno9dFTog==
X-Google-Smtp-Source: AGHT+IHPRRVfa7/lTL/FAHCnZ0EhKSDENbaTpEre/56m0a9j/pZ89HxBxVne3vEkeUmJJ840QF6VYg==
X-Received: by 2002:a17:906:fcca:b0:a3e:473e:26a0 with SMTP id qx10-20020a170906fcca00b00a3e473e26a0mr2936656ejb.51.1708331836826;
        Mon, 19 Feb 2024 00:37:16 -0800 (PST)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id th7-20020a1709078e0700b00a3e059c5c5fsm2695590ejc.188.2024.02.19.00.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 00:37:16 -0800 (PST)
Date: Mon, 19 Feb 2024 11:37:13 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <91d964c2-3d5a-4e96-a4db-e755455c5b5c@moroto.mountain>
References: <f75d0426a17b57dbddacd7da345c1c62a3dbb7ce.1708278363.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f75d0426a17b57dbddacd7da345c1c62a3dbb7ce.1708278363.git.christophe.jaillet@wanadoo.fr>
X-Rspamd-Queue-Id: BFFA33EFFE
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.98%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.53:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[wanadoo.fr];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DRIGBHIU7WFJTU7FM3N52BQG4OCGHKN6
X-Message-ID-Hash: DRIGBHIU7WFJTU7FM3N52BQG4OCGHKN6
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: gustavo@embeddedor.com, keescook@chromium.org, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] udmabuf: Fix a potential (and unlikely) access to unallocated memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DRIGBHIU7WFJTU7FM3N52BQG4OCGHKN6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Feb 18, 2024 at 06:46:44PM +0100, Christophe JAILLET wrote:
> If 'list_limit' is set to a very high value, 'lsize' computation could
> overflow if 'head.count' is big enough.
> 

The "list_limit" is set via module parameter so if you set that high
enough to lead to an integer overflow then you kind of deserve what
you get.

This patch is nice for kernel hardening and making the code easier to
read/audit but the real world security impact is negligible.

regards,
dan carpenter

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
