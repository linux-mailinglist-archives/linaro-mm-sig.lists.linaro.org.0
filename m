Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C975688BD66
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Mar 2024 10:15:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A10733EE2D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Mar 2024 09:15:39 +0000 (UTC)
Received: from mail-4317.proton.ch (mail-4317.proton.ch [185.70.43.17])
	by lists.linaro.org (Postfix) with ESMTPS id CDB6D3EE2D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Mar 2024 09:15:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=emersion.fr header.s=protonmail3 header.b=17He3t5j;
	dmarc=pass (policy=none) header.from=emersion.fr;
	spf=pass (lists.linaro.org: domain of contact@emersion.fr designates 185.70.43.17 as permitted sender) smtp.mailfrom=contact@emersion.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
	s=protonmail3; t=1711444534; x=1711703734;
	bh=uHkjh4wo6VYxK6JVfU3FNXjUFPyNrDTyCb8FrZZAQDc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=17He3t5jf/YJcqQ+xITAi1/j4sVJbJ9wHTNOzavkZpiI5BMpFkjUd52htbAwSq6i8
	 Ct8Szvrqq1fFT6c8aPvWXFrOwhCAO5WyEohafBaAz1/QPMZuooYM8b51fHGI24evJv
	 7G8Sl1mSU5gMwOeD7UIrl5+LWmAU/uPZqBivLpSonhL0yYITVbCqoiHSxAu5tTYlzb
	 q1ByBh5iEuo/Eye3G7LANNOwUZXT7cqDTLUwn880JWqxYpJUyZByXGDBHax6D83Q5V
	 Jgdbi2o9Yg2D5WtUbTiVsr8d0taJTZ6WjmglypTNc1nhPB7mrNacmXaFbvY+y4wFnR
	 PSa8xHj9idpdg==
Date: Tue, 26 Mar 2024 09:15:15 +0000
To: Rob Clark <robdclark@gmail.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <1Wwj_q3RYer6np0Orz0wJd9dlF82iBSX-PIVSlhCgJbpfVBMHF_CF04gHojkvqnvz9NXH6kACZGXQG9yXwtkbjIzLmdi-GNDkO5Nz2E-J9Y=@emersion.fr>
In-Reply-To: <20240322214801.319975-1-robdclark@gmail.com>
References: <20240322214801.319975-1-robdclark@gmail.com>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
X-Rspamd-Queue-Id: CDB6D3EE2D
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.32 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[emersion.fr,none];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[185.70.43.17:from];
	R_DKIM_ALLOW(-0.20)[emersion.fr:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:185.70.43.0/24];
	BAYES_HAM(-0.12)[66.67%];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:62371, ipnet:185.70.43.0/24, country:CH];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_ZERO(0.00)[0];
	FREEMAIL_TO(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,vger.kernel.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[emersion.fr:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XSZOXNN2W2MZVLEUC2UKPUTRZKZ7XMWC
X-Message-ID-Hash: XSZOXNN2W2MZVLEUC2UKPUTRZKZ7XMWC
X-MailFrom: contact@emersion.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Dominik Behr <dbehr@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/prime: Unbreak virtgpu dma-buf export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XSZOXNN2W2MZVLEUC2UKPUTRZKZ7XMWC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Makes sense to me!

Reviewed-by: Simon Ser <contact@emersion.fr>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
