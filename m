Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CB2583A8E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jul 2022 10:46:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1BECB47F58
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jul 2022 08:46:45 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 179B13EA51
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jul 2022 08:46:42 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 55DA5CE24A8;
	Thu, 28 Jul 2022 08:46:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16D3BC433D6;
	Thu, 28 Jul 2022 08:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1658997997;
	bh=PHHs5nIX4IopTV7l9ydxSupubpXxFsPpF3wfP6Uh7PQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ky2BTmaXFZnSjp5uBZezKkZ2YCjVBT+RyuWrzm7y0CDJcsvDkInuVyqDmLObAC4l1
	 8DB6vrT8AMdcqKlM+5NkasDZ9wAFk9b00iQ1xNRLUD04Mk++wqh0x/9C4hCHhNqtb5
	 1ldyhyqnkUC6hQp/vBYybaV4jvD21snPg6O3+jzM=
Date: Thu, 28 Jul 2022 10:46:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: yuji2.ishikawa@toshiba.co.jp
Message-ID: <YuJM66FM97jjA2L+@kroah.com>
References: <20220722082858.17880-1-yuji2.ishikawa@toshiba.co.jp>
 <20220722082858.17880-5-yuji2.ishikawa@toshiba.co.jp>
 <Yt6Q3A4tkmu797eX@kroah.com>
 <TYAPR01MB6201F467FB17AD40EE907E7392949@TYAPR01MB6201.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TYAPR01MB6201F467FB17AD40EE907E7392949@TYAPR01MB6201.jpnprd01.prod.outlook.com>
Message-ID-Hash: HPQEKJNAK27BPOGIDYXEW5UMVUXIP7C4
X-Message-ID-Hash: HPQEKJNAK27BPOGIDYXEW5UMVUXIP7C4
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: robh+dt@kernel.org, hverkuil@xs4all.nl, nobuhiro1.iwamatsu@toshiba.co.jp, corbet@lwn.net, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/5] MAINTAINERS: Add entries for Toshiba Visconti DNN image processing accelerator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HPQEKJNAK27BPOGIDYXEW5UMVUXIP7C4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Tue, Jul 26, 2022 at 06:10:40AM +0000, yuji2.ishikawa@toshiba.co.jp wrote:
> Sorry for this patch not being well formatted.
> 
> I'll add change log and the signed-off-by tag.
> I should have checked patches with checkpatch.pl as well as testing sources with --file option.

Just a normal call to checkpatch will work, no need for the --file
option.

Also for new stuff, please use the --strict to see more things that you
might also want to fix up.

For future versions, also please cc: me on this series.

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
