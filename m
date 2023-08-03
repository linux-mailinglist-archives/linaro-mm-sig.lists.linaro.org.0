Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DF476EE9B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Aug 2023 17:49:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0ACF443D5C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Aug 2023 15:49:40 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id B8C5E3EF12
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Aug 2023 15:49:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=SQU0Uu5A;
	spf=pass (lists.linaro.org: domain of daniels@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=daniels@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
Received: from strictly.printclub (zone.collabora.co.uk [167.235.23.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: daniels)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 47171660719E;
	Thu,  3 Aug 2023 16:49:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1691077773;
	bh=1utPjd4nZ+4QB9HS6ftCxv82n8kl2ZtzpHU962/E6rE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SQU0Uu5AYqLN0uIinurSjZx1HaX+nIKQo7UMy5gKDFm805tu3uuhA1MlUo/eF9l1L
	 5s6X0YNyVEkqjzr+koD539VbUlAiDo9relnPeDiyBQnw+kFM6Bq9KiNN0JuyFoUC/i
	 am+vkZ4+gWqlppMfpgPe6S3dhbvJkDqWQ9NltCuaGRQgLKy2D836iUHbqGPeak6Igt
	 Aij3am8eAYWhfDUTNZLF1cUIw+Oq3O0scunydRQjvWaVFZWkrw30/eTxc64Xmohccw
	 97tGO/fNQDaYkUfRZT6Qm/9q2wmtfqyCgNqbQpmArN5a6mAGL3kIMy9B4VpTGPzp5C
	 shiKdzaWWrDjQ==
From: Daniel Stone <daniels@collabora.com>
To: dri-devel@lists.freedesktop.org
Date: Thu,  3 Aug 2023 16:47:27 +0100
Message-ID: <20230803154908.105124-2-daniels@collabora.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20210905122742.86029-1-daniels@collabora.com>
References: <20210905122742.86029-1-daniels@collabora.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B8C5E3EF12
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.13 / 15.00];
	BAYES_HAM(-1.23)[89.46%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[46.235.227.172:from];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: YTJMA4O3TGKYQMOSEJFNMZ53QVO6CDBD
X-Message-ID-Hash: YTJMA4O3TGKYQMOSEJFNMZ53QVO6CDBD
X-MailFrom: daniels@collabora.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/2] doc: uapi: Document dma-buf interop design & semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YTJMA4O3TGKYQMOSEJFNMZ53QVO6CDBD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,
This is v2 to the linked patch series; thanks to everyone for reviewing
the initial version. I've moved this out of a pure DRM scope and into
the general userspace-API design section. Hopefully it helps others and
answers a bunch of questions.

I think it'd be great to have input/links/reflections from other
subsystems as well here.

Cheers,
Daniel


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
