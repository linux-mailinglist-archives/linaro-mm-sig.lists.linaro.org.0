Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3845751305A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 11:53:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69A5E47FCA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 09:53:26 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	by lists.linaro.org (Postfix) with ESMTPS id C5AB23EA4A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Apr 2022 15:26:12 +0000 (UTC)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id F123CFF80D;
	Wed, 27 Apr 2022 15:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1651073172;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Br/ARAuWyrQx0Shx7ZTt5B5h8e1yAa6aF5x9EgWTdME=;
	b=QQtCHEe5N6e5yUN1VTPJzMTqqdHJQQf+73x4CU8CcONwnoXr6CGlp97ziX651mDXYxSbCt
	L7Gu1xPdv2cHqNTce8fyRFw5czCFRjwEf8mh3wQsuV3+4DAdIENoypbh4/s+pnaXF0tcFV
	MQp1oNZvEc6DyhS9PdONu+jEqh2c88I2c0TNvtXgFEv8sFmjs9jTIP4a826e82Mgjfe8X8
	mldHbFgqSz7wi4+4Zknoz9dq0FPUqIkv+1RIySJsSTt+1vm+0Jg8SQpwLTFTdZkHZHrolN
	4EvorbSC0GizDRVttS97TTUEQy/yZYUe9OoPcJhYfa21aT0H/11TmDOjY8xZfA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Yang Yingliang <yangyingliang@huawei.com>,
	linux-kernel@vger.kernel.org,
	linux-mtd@lists.infradead.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Wed, 27 Apr 2022 17:26:10 +0200
Message-Id: <20220427152610.100972-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220426084913.4021868-2-yangyingliang@huawei.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'ddf66aefd685fd46500b9917333e1b1e118276dc'
X-MailFrom: miquel.raynal@bootlin.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L3XPXB5N7735DGOX3TJ4ABZ6KEZVHUR7
X-Message-ID-Hash: L3XPXB5N7735DGOX3TJ4ABZ6KEZVHUR7
X-Mailman-Approved-At: Thu, 28 Apr 2022 09:53:21 +0000
CC: Miquel Raynal <miquel.raynal@bootlin.com>, richard@nod.at
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] mtd: rawnand: intel: fix possible null-ptr-deref in ebu_nand_probe()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L3XPXB5N7735DGOX3TJ4ABZ6KEZVHUR7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 2022-04-26 at 08:49:12 UTC, Yang Yingliang wrote:
> It will cause null-ptr-deref when using 'res', if platform_get_resource()
> returns NULL, so move using 'res' after devm_ioremap_resource() that
> will check it to avoid null-ptr-deref.
> 
> Fixes: 0b1039f016e8 ("mtd: rawnand: Add NAND controller support on Intel LGM SoC")
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
