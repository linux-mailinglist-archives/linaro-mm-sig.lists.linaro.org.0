Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C0653513055
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 11:52:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 025934800A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 09:52:52 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	by lists.linaro.org (Postfix) with ESMTPS id D08E73EA4A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Apr 2022 15:26:07 +0000 (UTC)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 37C5FFF809;
	Wed, 27 Apr 2022 15:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1651073167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4wTZZPinydjcjv1I4AgdUoYpVwYx1Dn3FddOafhqD5Y=;
	b=QWGmZPBP5zuKML1STJVjCP2ZYTRb+zr+JLX8/DOlI80QVASlR5kcTXua9ARdiWCNbuE9I3
	cQmXalTI45lGAFEMWzjRYYsyW7hdlQjWsIBUo1kswZimYqjPKqzZ0rMD7sroV72KO7YbW5
	rCyBZXHGfb/M3BtmEkKtieUGVRFKuYreynNW4ZIIe9OhtftJltXMSKLZNoRsjUCSVn+tCn
	NdXB9P1MCMn9aGdjnC0o88sLQCDplCOtJW5HCA4g7DXtApkxVpUAsXovXBkxVDtJ499qwW
	HXoRBAmWPNcA+7uWJ2xXHOzq9D2BNhkOLlR25Ew4zTozG7UQ/W1xUX85BAOP6Q==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Yang Yingliang <yangyingliang@huawei.com>,
	linux-kernel@vger.kernel.org,
	linux-mtd@lists.infradead.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Wed, 27 Apr 2022 17:26:05 +0200
Message-Id: <20220427152605.100908-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220426084913.4021868-3-yangyingliang@huawei.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'9b2152f96f4a243bdfb89027c0d920aa0af810e7'
X-MailFrom: miquel.raynal@bootlin.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GB26GJQV3MEIW6MGASXNNMV3AEGKFUTY
X-Message-ID-Hash: GB26GJQV3MEIW6MGASXNNMV3AEGKFUTY
X-Mailman-Approved-At: Thu, 28 Apr 2022 09:52:46 +0000
CC: Miquel Raynal <miquel.raynal@bootlin.com>, richard@nod.at
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/3] mtd: rawnand: tmio: check return value after calling platform_get_resource()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GB26GJQV3MEIW6MGASXNNMV3AEGKFUTY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 2022-04-26 at 08:49:13 UTC, Yang Yingliang wrote:
> It will cause null-ptr-deref if platform_get_resource() returns NULL,
> we need check the return value.
> 
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
