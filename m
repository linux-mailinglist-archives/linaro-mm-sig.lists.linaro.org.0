Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F70B6BBAC5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:23:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44DCD3F45A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:23:45 +0000 (UTC)
Received: from out-3.mta1.migadu.com (out-3.mta1.migadu.com [95.215.58.3])
	by lists.linaro.org (Postfix) with ESMTPS id F2C753EECA
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 17:39:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=rosenzweig.io header.s=key1 header.b=FTUuASPV;
	spf=pass (lists.linaro.org: domain of alyssa@rosenzweig.io designates 95.215.58.3 as permitted sender) smtp.mailfrom=alyssa@rosenzweig.io;
	dmarc=pass (policy=quarantine) header.from=rosenzweig.io
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosenzweig.io;
	s=key1; t=1678297145;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yVSYNjCHn8PZygOPU8FaPpzcyZxyRzar8PA59R3WlkM=;
	b=FTUuASPVjKjYV3cgR8DM7Q/D53G17nSjTRtKK5kslyagyxeCTRYYVbKDtQhi9bpH3m+ZtA
	9oHrB3kWjYVdDTETA/SNEJKa+eU8UFpHExrxk++MTgaVzb52a+0ybd1dQYV8QRbztzU9V+
	ECi9YEUuH0+actMuPHGLiHa8Nqk0iOEjLbQziYOK2/+ZeN0xmLqR5tzoikyb0lhhoSQkWg
	MrrwH48EDj11rAURsP9leymAeja4qCI04DgkljR/dqQVtrW1AmhzYa7ASmzRTyBiDLw1I4
	RwWVNA6leYb6hAGM5PLKb5yoArBe2XIqoLIl8Bp+mc3Qg4H9hlAbvAOC4/tHiw==
Date: Wed, 08 Mar 2023 17:39:03 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: alyssa@rosenzweig.io
Message-ID: <8e93126cfaf47ebad0dc70e038ccc92f@rosenzweig.io>
To: "Asahi Lina" <lina@asahilina.net>,
 "=?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?=" <christian.koenig@amd.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Daniel Vetter" <daniel@ffwll.ch>, "Miguel
 Ojeda" <ojeda@kernel.org>, "Alex Gaynor" <alex.gaynor@gmail.com>, "Wedson
 Almeida Filho" <wedsonaf@gmail.com>, "Boqun Feng" <boqun.feng@gmail.com>,
 "Gary Guo" <gary@garyguo.net>, "=?utf-8?B?QmrDtnJuIFJveSBCYXJvbg==?="
 <bjorn3_gh@protonmail.com>, "Sumit Semwal" <sumit.semwal@linaro.org>,
 "Luben Tuikov" <luben.tuikov@amd.com>, "Jarkko Sakkinen"
 <jarkko@kernel.org>, "Dave Hansen" <dave.hansen@linux.intel.com>
In-Reply-To: <0f14c1ae-0c39-106c-9563-7c1c672154c0@asahilina.net>
References: <0f14c1ae-0c39-106c-9563-7c1c672154c0@asahilina.net>
 <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-11-917ff5bc80a8@asahilina.net>
 <bbd7c5ee-c2f0-3e19-757d-a9aff1a26d3d@linux.intel.com>
 <585fa052-4eff-940e-b307-2415c315686a@amd.com>
 <3320e497-09c0-6eb6-84c5-bab2e63f28ec@asahilina.net>
 <7b39ef96-3ec5-c492-6e1b-bf065b7c90a2@amd.com>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F2C753EECA
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.48 / 15.00];
	BAYES_HAM(-2.98)[99.93%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[rosenzweig.io,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:95.215.58.0/24];
	R_DKIM_ALLOW(-0.20)[rosenzweig.io:s=key1];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[asahilina.net,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org];
	RCVD_COUNT_ZERO(0.00)[0];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:202172, ipnet:95.215.58.0/24, country:CH];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[28];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[rosenzweig.io:+];
	ARC_NA(0.00)[]
X-MailFrom: alyssa@rosenzweig.io
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AWAMO57OIBSDIR45BQBPNPSVY7PMLBT3
X-Message-ID-Hash: AWAMO57OIBSDIR45BQBPNPSVY7PMLBT3
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:22:05 +0000
CC: Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 11/18] drm/scheduler: Clean up jobs when the scheduler is torn down
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AWAMO57OIBSDIR45BQBPNPSVY7PMLBT3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> You can't ask me for a list
> of pending jobs (the scheduler knows this, it doesn't make any sense to
> duplicate that outside)

Silly question: could you add a new exported function to drm_sched to get the list of pending jobs, to be used by the Rust abstraction internally? IDK if that makes any sense.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
