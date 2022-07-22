Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5F057E25B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Jul 2022 15:33:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC0A84796B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Jul 2022 13:33:03 +0000 (UTC)
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by lists.linaro.org (Postfix) with ESMTPS id 505A93EE75
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Jul 2022 13:33:01 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:281:8300:73::5f6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 1226337B;
	Fri, 22 Jul 2022 13:33:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 1226337B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
	t=1658496780; bh=Gf5V+dDS778WCgJ/togXFN0/pG3fOa3s68V7PZ2pIPw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=RO5yIM8BxfsxQCOD0hUS2p0Lsb7VUMsfoIchDID5s5uOCeDhnYf3/2HNtqzSYlcIW
	 nrNZIfpDMwRNRK755WGJtpQqeB/dT/sgiMYWJ/qtoJKKn2s/uP9y9HKdo+EgChAtno
	 c89hCjRi5ob0Ld+csJBqISv1AqAqgbuneXsrj+UDNkWSBVpqdwYPJZQ4N8zv4p2567
	 cMSvdGcLStjB71Avu2pxt+erN616fL3+xJeqSjGP8Gy7LfS6ZgiHGEo0rMqeICeBBb
	 tbWmGfewvXeywFsjYhX+OOedw1nlf20AZWlYSQktnxic/u8HFglWXL6zcuWZS/KD7t
	 AIlA2H6HqrB3w==
From: Jonathan Corbet <corbet@lwn.net>
To: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>, Rob Herring
 <robh+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Nobuhiro Iwamatsu
 <nobuhiro1.iwamatsu@toshiba.co.jp>, Sumit Semwal
 <sumit.semwal@linaro.org>, Christian =?utf-8?Q?K=C3=B6nig?=
 <christian.koenig@amd.com>
In-Reply-To: <20220722082858.17880-6-yuji2.ishikawa@toshiba.co.jp>
References: <20220722082858.17880-1-yuji2.ishikawa@toshiba.co.jp>
 <20220722082858.17880-6-yuji2.ishikawa@toshiba.co.jp>
Date: Fri, 22 Jul 2022 07:32:58 -0600
Message-ID: <87zgh1jmr9.fsf@meer.lwn.net>
MIME-Version: 1.0
Message-ID-Hash: VHBTYRIZ35TNY2XDPCW7HA3LVDKSU6PA
X-Message-ID-Hash: VHBTYRIZ35TNY2XDPCW7HA3LVDKSU6PA
X-MailFrom: corbet@lwn.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, yuji2.ishikawa@toshiba.co.jp
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 5/5] Documentation: driver-api: visconti: add a description of DNN driver.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VHBTYRIZ35TNY2XDPCW7HA3LVDKSU6PA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp> writes:

No changelog?

> Signed-off-by: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
> ---
> v1 -> v2:
>   - newly added documents
> ---
>  Documentation/driver-api/visconti/common.rst | 115 ++++++
>  Documentation/driver-api/visconti/dnn.rst    | 394 +++++++++++++++++++
>  2 files changed, 509 insertions(+)
>  create mode 100644 Documentation/driver-api/visconti/common.rst
>  create mode 100644 Documentation/driver-api/visconti/dnn.rst

Two overall comments:

 - You've added new RST files without adding them to index.rst; that
   will keep them from being part of the kernel docs build and will add
   new warnings.

 - Please avoid the use of flat-table and just use regular RST
   ascii-art tables.  Otherwise the result is nearly unreadable in the
   plain-test format.

Thanks,

jon
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
