Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC5891F04D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jul 2024 09:35:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8CAC1447C0
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jul 2024 07:35:10 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id 7FBC93F485
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Jul 2024 07:35:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de;
	dmarc=none
Received: by verein.lst.de (Postfix, from userid 2407)
	id 9631968AFE; Tue,  2 Jul 2024 09:35:04 +0200 (CEST)
Date: Tue, 2 Jul 2024 09:35:04 +0200
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <20240702073504.GA29323@lst.de>
References: <20240630011215.42525-1-thorsten.blum@toblux.com> <20240701232634.0bddb542ddea123b48dcabdf@linux-foundation.org> <20240702064017.GA24838@lst.de> <e0f384b0-6913-4224-a3ea-bdae784f5dab@amd.com> <20240702003357.6bfd1d918c56d536bb664c37@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240702003357.6bfd1d918c56d536bb664c37@linux-foundation.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Rspamd-Queue-Id: 7FBC93F485
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.64 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-1.44)[91.24%];
	R_SPF_ALLOW(-0.20)[+ip4:213.95.11.211:c];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_NA(0.00)[];
	DMARC_NA(0.00)[lst.de];
	NEURAL_SPAM(0.00)[0.866]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ALVG3OW7LVSOOG3TW2LKLXLPSPV73QCR
X-Message-ID-Hash: ALVG3OW7LVSOOG3TW2LKLXLPSPV73QCR
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Christoph Hellwig <hch@lst.de>, Thorsten Blum <thorsten.blum@toblux.com>, jack@suse.cz, surenb@google.com, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Remove unnecessary kmalloc() cast
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ALVG3OW7LVSOOG3TW2LKLXLPSPV73QCR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jul 02, 2024 at 12:33:57AM -0700, Andrew Morton wrote:
> Dang, yes, that was a regrettable change.  But hardly the end of the
> world.  I do think each such alteration should have included a comment
> to prevent people from going and cleaning them up.

.. or we should have never merged that utter mess ..

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
