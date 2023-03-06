Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E996AC0DA
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Mar 2023 14:27:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4FEAB3F03F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Mar 2023 13:27:30 +0000 (UTC)
Received: from gnuweeb.org (gnuweeb.org [51.81.211.47])
	by lists.linaro.org (Postfix) with ESMTPS id E2C013EA3F
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Mar 2023 11:51:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gnuweeb.org header.s=default header.b=B0xJQah7;
	spf=pass (lists.linaro.org: domain of ammarfaizi2@gnuweeb.org designates 51.81.211.47 as permitted sender) smtp.mailfrom=ammarfaizi2@gnuweeb.org;
	dmarc=pass (policy=none) header.from=gnuweeb.org
Received: from biznet-home.integral.gnuweeb.org (unknown [182.253.183.169])
	by gnuweeb.org (Postfix) with ESMTPSA id 93F598314F;
	Mon,  6 Mar 2023 11:51:52 +0000 (UTC)
X-GW-Data: lPqxHiMPbJw1wb7CM9QUryAGzr0yq5atzVDdxTR0iA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gnuweeb.org;
	s=default; t=1678103518;
	bh=7mp2IVJ+mYOWVTN/6Ljscq5f7jZl+nO1fDzxD+/mR7c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B0xJQah7pjDgMM/+kwBLX8mlew7B9eLbWu8sc7emjX1hXKrNhB3TkrduSJID4sB42
	 AIW/ZVP9N8RtpJi0a/8v6yDhwTjbX6T4dWHOwwPPVv9SZyHyJJMrnDkgVtmzRDCcn2
	 HqqoD/MI5raOfTvTC6WUaq/VH/GlhgeW6p0Tc4LT8d84vIJFFKOMARe4Ahb3ywN9IB
	 mRCXfKfG29XOoTYwkCSoXuRGzGqikswnXIAJJjQFLQ/R7BH5a99RtxX1znauRvAuBi
	 8t7U4A6XaF1lhGMRZ3hPx8ChNpfhhbP+kigP7HDaYlhL+Psv45wzc0jSheNIZUY+mr
	 rx2NDiKNG9xcg==
Date: Mon, 6 Mar 2023 18:51:48 +0700
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZAXT1B1GTlmA78Ld@biznet-home.integral.gnuweeb.org>
References: <6feae796-db3f-1135-a607-cfefb0259788@gnuweeb.org>
 <ZAGqet3U8AMm4Uf1@debian.me>
 <ZAOTU5CRwdEC1lGH@biznet-home.integral.gnuweeb.org>
 <87v8jetaik.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v8jetaik.fsf@intel.com>
X-Bpl: hUx9VaHkTWcLO7S8CQCslj6OzqBx2hfLChRz45nPESx5VSB/xuJQVOKOB1zSXE3yc9ntP27bV1M1
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E2C013EA3F
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gnuweeb.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:51.81.211.47];
	R_DKIM_ALLOW(-0.20)[gnuweeb.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:16276, ipnet:51.81.128.0/17, country:FR];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,linux.intel.com,intel.com,ffwll.ch,linaro.org,amd.com,suse.de,vger.kernel.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gnuweeb.org:+];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: ammarfaizi2@gnuweeb.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TAAS5YBPDJE2NAO7WY7XQRFCOZ5VFF62
X-Message-ID-Hash: TAAS5YBPDJE2NAO7WY7XQRFCOZ5VFF62
X-Mailman-Approved-At: Mon, 06 Mar 2023 13:27:05 +0000
CC: Bagas Sanjaya <bagasdotme@gmail.com>, Intel GFX Mailing List <intel-gfx@lists.freedesktop.org>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>, Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>, Manasi Navare <manasi.d.navare@intel.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Linux 6.2.1 hits a display driver bug (list_del corruption, ffff88811b4af298->next is NULL)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TAAS5YBPDJE2NAO7WY7XQRFCOZ5VFF62/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Mar 06, 2023 at 12:54:59PM +0200, Jani Nikula wrote:
> Please file a bug at fdo gitlab:
> 
> https://gitlab.freedesktop.org/drm/intel/wikis/How-to-file-i915-bugs

OK, I posted it here https://gitlab.freedesktop.org/drm/intel/-/issues/8274

Thanks,

-- 
Ammar Faizi

P.S:
I had to create a new account because I forgot my previous freedesktop
GitLab account password. I tried to use the forgot password feature but
didn't get any email to reset my password. My old GitLab email address
is ammarfaizi2@gmail.com.

Just in case someone can tell what goes wrong with the forgot password
feature on there...

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
