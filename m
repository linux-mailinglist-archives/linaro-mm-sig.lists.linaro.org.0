Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6286DF265
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Apr 2023 13:00:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91F003EC27
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Apr 2023 11:00:31 +0000 (UTC)
Received: from gnuweeb.org (gnuweeb.org [51.81.211.47])
	by lists.linaro.org (Postfix) with ESMTPS id 7906E3F652
	for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Apr 2023 11:00:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gnuweeb.org header.s=default header.b=THfXqEBd;
	spf=pass (lists.linaro.org: domain of ammarfaizi2@gnuweeb.org designates 51.81.211.47 as permitted sender) smtp.mailfrom=ammarfaizi2@gnuweeb.org;
	dmarc=pass (policy=none) header.from=gnuweeb.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gnuweeb.org;
	s=default; t=1681297218;
	bh=xR4GuTL5Nmxsxu18JrbipI8OGiSCJg9nlLups6OAbag=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=THfXqEBdjK14et4Ik0idqXMu7LfYqJY7h/jq/AXfwPLM9Lico4dOaOkW7jkqfFwQK
	 b1pZ2hoKCYrblbz0q/6YkguN6Ejq8zm1O9W/XLdrdSPE42Pi1neLaqLPqhL91LIkrF
	 3jOjZ7XmbNY6Aq5DMJItnxRSS2jBlw2PMUA03eQk/6Hof38BXvBdpsQ3m7Ua4ofCAI
	 V/SLD1x8nkrmO7bYb+rAx0IRaxGxMp5sIVic7l3Ag/IEZsqU6TsL4CrXpahHcOMgdv
	 h7KnVf/JaR+mdmoBqC7ZHDjEn65aRbYGyX295KOGs5uhu+wR+lEEnHGiHmZetM9umA
	 pcx1ExMLp2Oqg==
Received: from biznet-home.integral.gnuweeb.org (unknown [182.253.88.211])
	by gnuweeb.org (Postfix) with ESMTPSA id C9409245324;
	Wed, 12 Apr 2023 18:00:11 +0700 (WIB)
Date: Wed, 12 Apr 2023 18:00:07 +0700
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Message-ID: <ZDaPNx7WSKeMqgmj@biznet-home.integral.gnuweeb.org>
References: <6feae796-db3f-1135-a607-cfefb0259788@gnuweeb.org>
 <ZAGqet3U8AMm4Uf1@debian.me>
 <ZAOTU5CRwdEC1lGH@biznet-home.integral.gnuweeb.org>
 <87v8jetaik.fsf@intel.com>
 <ZAXT1B1GTlmA78Ld@biznet-home.integral.gnuweeb.org>
 <ZDYw0vVg7Y1oExJL@debian.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZDYw0vVg7Y1oExJL@debian.me>
X-Bpl: hUx9VaHkTWcLO7S8CQCslj6OzqBx2hfLChRz45nPESx5VSB/xuJQVOKOB1zSXE3yc9ntP27bV1M1
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7906E3F652
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[51.81.211.47:from,182.253.88.211:received];
	DMARC_POLICY_ALLOW(-0.50)[gnuweeb.org,none];
	R_DKIM_ALLOW(-0.20)[gnuweeb.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:51.81.211.47];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:16276, ipnet:51.81.128.0/17, country:FR];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[linux.intel.com,lists.freedesktop.org,intel.com,gmail.com,ffwll.ch,linaro.org,amd.com,suse.de,vger.kernel.org,lists.linaro.org,lists.linux.dev,leemhuis.info];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[gnuweeb.org:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: VLWQPCVKCTRKKHBQ4JH2EPANZSZYZFXO
X-Message-ID-Hash: VLWQPCVKCTRKKHBQ4JH2EPANZSZYZFXO
X-MailFrom: ammarfaizi2@gnuweeb.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jani Nikula <jani.nikula@linux.intel.com>, Intel GFX Mailing List <intel-gfx@lists.freedesktop.org>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>, Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>, Manasi Navare <manasi.d.navare@intel.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Linux Regressions <regressions@lists.linux.dev>, Linux regression tracking <regressions@leemhuis.info>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Linux 6.2.1 hits a display driver bug (list_del corruption, ffff88811b4af298->next is NULL)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VLWQPCVKCTRKKHBQ4JH2EPANZSZYZFXO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Apr 12, 2023 at 11:17:22AM +0700, Bagas Sanjaya wrote:
> From gitlab issue above, I don't see any progress on bisection attempt.
> Ammar, have you successfully boot Ubuntu 20.04 with v5.10 kernel and
> test there?

I am still using Ubuntu 22.04. Haven't tried 20.04. I'll arrange time
for it this week.

> Anyway, I'm adding this to regzbot (with tentative commit range):
> 
> #regzbot introduced: v5.10..v5.15.103
> #regzbot title: Linux 6.2.1 hits a display driver bug (list_del corruption, ffff88811b4af298->next is NULL)
> #regzbot link: https://gitlab.freedesktop.org/drm/intel/-/issues/8274
> 
> (Also Cc: Thorsten)

Not sure why you marked it as regression. I haven't even found the last
good commit. It's possible that it's always broken since the beginning.

-- 
Ammar Faizi

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
