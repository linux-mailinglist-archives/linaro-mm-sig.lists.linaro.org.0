Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3921C3B7656
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jun 2021 18:14:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F4406654B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jun 2021 16:14:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7833666034; Tue, 29 Jun 2021 16:14:01 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A5746350A;
	Tue, 29 Jun 2021 16:13:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A6F6060649
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Jun 2021 16:13:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9D7DE6350A; Tue, 29 Jun 2021 16:13:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 93FC060649
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Jun 2021 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=bsKC9hStNBxuu6z8fnR5NzqDvI7AeyhXRMRevJVYHrk=; b=qNVOXCTL20VkHlA4aF6HTQMYx1
 LwtsMk563uq2iLCQKeNz2vEbVi79OhH4rwWM+n/962CaICI2xp1ymzoT59n3Y1cZyx+1tmb234wbK
 4DZRThJQFFLj8PqPFDlvGq1HlAamikuMQWNVFs1tv74haCX4CjQzm3682WIOnLelMIzRXHV3P5sGO
 ts3RM77M/fnFZHkiVQRi7ge0Js3VNR+b8E6HpqdZcY3PtV/OlwpW0JvcppiTnEeb8gSkYpSScF0iL
 j/CGyQwNzgiHdPb3UHEa4kB7Yr1qeKJJyzAHNVD2YX+ENKnxdy6iWxPVtalm7v589CHO7qNN+ITaU
 PIAUkCbA==;
Received: from [2601:1c0:6280:3f0::aefb]
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyGMy-00Baeg-De; Tue, 29 Jun 2021 16:13:52 +0000
To: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
References: <20210628004012.6792-1-rdunlap@infradead.org>
 <YNtCYyHXOrObRUDK@phenom.ffwll.local> <YNtF6aiUSqngxXoq@phenom.ffwll.local>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <5a89fa0e-1d28-ba64-e5ea-fd577a1dc4ac@infradead.org>
Date: Tue, 29 Jun 2021 09:13:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YNtF6aiUSqngxXoq@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH -next] <linux/dma-resv.h>: correct a
 function name in kernel-doc
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On 6/29/21 9:10 AM, Daniel Vetter wrote:
> On Tue, Jun 29, 2021 at 05:55:15PM +0200, Daniel Vetter wrote:
>> On Sun, Jun 27, 2021 at 05:40:12PM -0700, Randy Dunlap wrote:
>>> Fix kernel-doc function name warning:
>>>
>>> ../include/linux/dma-resv.h:227: warning: expecting prototype for dma_resv_exclusive(). Prototype was for dma_resv_excl_fence() instead
>>>
>>> Fixes: 6edbd6abb783d ("ma-buf: rename and cleanup dma_resv_get_excl v3")
> 
> Script caught a lost      'd' here, I fixed that up when applying.
> -Daniel

Oops. Thanks.

~Randy

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
