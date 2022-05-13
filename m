Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A88D525FA9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 May 2022 12:27:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 330EC404C5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 May 2022 10:27:08 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id AE14A4049A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 May 2022 10:27:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CE871B82D79;
	Fri, 13 May 2022 10:27:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35DFBC34100;
	Fri, 13 May 2022 10:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1652437621;
	bh=pTA4HXvpS8DuEF4nFjoqNWh0DGB6tDjhLzkQfFBwJMU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e9O4imyBJIqCEIV66j0/sr7IDdE3NmIgmOiSNxBHVusss9fc0WI91dN5mE9gwwd+a
	 i98oyMTXx4H6wi9X1dl6N42uUc/cRAZu1s4rImNUDykrYRwuIHEQsik3VTb/oPtiSM
	 pa70tzuwhT0NePaqI+keZqPxfteFyyfad5QZPZtI=
Date: Fri, 13 May 2022 12:26:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Charan Teja Kalla <quic_charante@quicinc.com>
Message-ID: <Yn4ycnpSV2dKU0vv@kroah.com>
References: <1652434689-6203-1-git-send-email-quic_charante@quicinc.com>
 <Yn4u0AG8iC33S3jO@kroah.com>
 <2a45f1e1-39d5-76b3-8fd3-c1f8b288afac@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2a45f1e1-39d5-76b3-8fd3-c1f8b288afac@quicinc.com>
Message-ID-Hash: 4ZOATRORT2NW4OKOHUJN4OL7NJ2SRUMV
X-Message-ID-Hash: 4ZOATRORT2NW4OKOHUJN4OL7NJ2SRUMV
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: christian.koenig@amd.com, sumit.semwal@linaro.org, hridya@google.com, tjmercier@google.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V3] dma-buf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4ZOATRORT2NW4OKOHUJN4OL7NJ2SRUMV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 13, 2022 at 03:48:23PM +0530, Charan Teja Kalla wrote:
> 
> On 5/13/2022 3:41 PM, Greg KH wrote:
> >> Reported-by: kernel test robot <lkp@intel.com>
> > The trest robot did not say that the dmabuf stat name was being
> > duplicated, did it?
> >
> 
> It reported a printk warning on V2[1]. Should we remove this on V3?

Yes, that's different.

> @Christian: Could you please drop this tag while merging?
> 
> [1] https://lore.kernel.org/all/202205110511.E0d8TXXC-lkp@intel.com/

Never ask a maintainer to hand-edit a patch, it increases their workload
:(

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
