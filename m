Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B51791F045
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jul 2024 09:34:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2374343F0F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jul 2024 07:34:04 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 862263F04B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Jul 2024 07:34:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=korg header.b=0FzxGbxo;
	spf=pass (lists.linaro.org: domain of akpm@linux-foundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org;
	dmarc=none
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 50154CE1B55;
	Tue,  2 Jul 2024 07:33:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50398C116B1;
	Tue,  2 Jul 2024 07:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
	s=korg; t=1719905638;
	bh=w3GfV/hQPM47V8A8C7lB/UBMrklFJe5KZzfNawdoh7w=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=0FzxGbxoE6hNMJFYe250AXSbI6hqakLsb9w+BAEm/pqQnP9Y5ZcvHfj9zmMA8cj2z
	 OYRN/NfeoRIfI0TYnF9Hqz7NuxvRf04Ufr7Jh89s1Qpcfw036CAjAJVFJJCxfrUqMN
	 60Vm8PPtFW/k/zich1LxvFIvp2EJrhNevFmAHTho=
Date: Tue, 2 Jul 2024 00:33:57 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-Id: <20240702003357.6bfd1d918c56d536bb664c37@linux-foundation.org>
In-Reply-To: <e0f384b0-6913-4224-a3ea-bdae784f5dab@amd.com>
References: <20240630011215.42525-1-thorsten.blum@toblux.com>
	<20240701232634.0bddb542ddea123b48dcabdf@linux-foundation.org>
	<20240702064017.GA24838@lst.de>
	<e0f384b0-6913-4224-a3ea-bdae784f5dab@amd.com>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Rspamd-Queue-Id: 862263F04B
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.99)[99.97%];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[linux-foundation.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linux-foundation.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BSCU6UOCD77OJRZBB7OTQLSLMWXEDKWG
X-Message-ID-Hash: BSCU6UOCD77OJRZBB7OTQLSLMWXEDKWG
X-MailFrom: akpm@linux-foundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@lst.de>, Thorsten Blum <thorsten.blum@toblux.com>, jack@suse.cz, surenb@google.com, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Remove unnecessary kmalloc() cast
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BSCU6UOCD77OJRZBB7OTQLSLMWXEDKWG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, 2 Jul 2024 09:13:35 +0200 Christian K=F6nig <christian.koenig@amd.c=
om> wrote:

> yes that is=20
> intentionally a define and not an inline function.
>=20
> See this patch here which changed that:
>=20
> commit 2c321f3f70bc284510598f712b702ce8d60c4d14
> Author: Suren Baghdasaryan <surenb@google.com>
> Date:=A0=A0 Sun Apr 14 19:07:31 2024 -0700
>=20
>  =A0=A0=A0 mm: change inlined allocation helpers to account at the call s=
ite

Dang, yes, that was a regrettable change.  But hardly the end of the
world.  I do think each such alteration should have included a comment
to prevent people from going and cleaning them up.


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
