Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C8B44F87C
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 14 Nov 2021 15:26:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44E6260C95
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 14 Nov 2021 14:25:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5A00160CFC; Sun, 14 Nov 2021 14:25:57 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 269C160A09;
	Sun, 14 Nov 2021 14:25:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E312060919
 for <linaro-mm-sig@lists.linaro.org>; Sun, 14 Nov 2021 14:25:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D8A0260A09; Sun, 14 Nov 2021 14:25:52 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id BB5FF60919
 for <linaro-mm-sig@lists.linaro.org>; Sun, 14 Nov 2021 14:25:50 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A7C5461027;
 Sun, 14 Nov 2021 14:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636899949;
 bh=ZV2Hx3+pIL6mKU8se/mh5FSio88H9eOPjUCiqqBfNMY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WEXnx6VbLq/G2BMMPxLRQ7erP972PFzRoh0VTTIJKNZMRst2e9JgagN4H/KGNaG1F
 O9mxp+qs7h8l1cvr6dgs2wVo2R+uDexa4twqzLBQyg9lDdAIZZNmhyg2JOcy7NqIm2
 +/TAd42dHuaga7bCxwMnOVWjZBTRpDQIGtW4Wh6OI/wNUg3dYxKmDe7BwPbTJxjUzN
 PE84zJNVgFZpigvIy4Qvu7Gd7yUSaYfpWX5aPunG3QkGxYRp668Um3fDSycfg0YFFA
 CHDy81cKJLPRZeg4CrXOBH+IIEaTljLV3Y5vd7sZ5eUj8ysfIs0L3bekdoe1yQ4xkp
 TcoWd7YsZL+Dg==
Date: Sun, 14 Nov 2021 09:25:48 -0500
From: Sasha Levin <sashal@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <YZEcbEY4HkvZYdOh@sashalap>
References: <20211108174453.1187052-1-sashal@kernel.org>
 <20211109075423.GA16766@amd>
 <3957633e-9596-e329-c79b-b45e9993d139@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3957633e-9596-e329-c79b-b45e9993d139@infradead.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] AUTOSEL series truncated was -- Re: [PATCH
 AUTOSEL 5.15 001/146] dma-buf: WARN on dmabuf release with pending
 attachments
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
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Charan Teja Reddy <charante@codeaurora.org>,
 dri-devel@lists.freedesktop.org, Pavel Machek <pavel@ucw.cz>,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Nov 09, 2021 at 08:05:23AM -0800, Randy Dunlap wrote:
>On 11/8/21 11:54 PM, Pavel Machek wrote:
>>Hi!
>>
>>This series is truncated .. I only got first patches. Similary, 5.10
>>series is truncated, [PATCH AUTOSEL 5.10 035/101] media: s5p-mfc: Add
>>checking to s5p_mfc_probe... is last one I got.
>>
>>I got all the patches before that, so I believe it is not problem on
>>my side, but I'd not mind someone confirming they are seeing the same
>>problem...
>
>Yes, several of the patch series were incomplete for me also...

Odd. I'll keep a closer look next time I send a series out to figure out
what's going on.

Thanks for the heads-up!

-- 
Thanks,
Sasha
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
