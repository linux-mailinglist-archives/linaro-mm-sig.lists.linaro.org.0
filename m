Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD4E44B0D6
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Nov 2021 17:05:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1551760BD8
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Nov 2021 16:05:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E98F760BBE; Tue,  9 Nov 2021 16:05:37 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C469260B59;
	Tue,  9 Nov 2021 16:05:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 403446033B
 for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Nov 2021 16:05:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3DDE360B59; Tue,  9 Nov 2021 16:05:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [178.238.156.107])
 by lists.linaro.org (Postfix) with ESMTPS id 368FF6033B
 for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Nov 2021 16:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=HKqZVUTyITTKjgy2bSV7h4abqd5N6tsdpToL4Lb0mKc=; b=Xz8Jhef9yQSyM4bHzlcdA32i3e
 PyDBMANcwcbhPo4zFx69oE+cnWHgIViH/8GIUv8YiGxaB0YbY/9NzMUSgXLunYsidm8W9hZfm5jxT
 MfoNs4YehQA8Hvr0jkp10nf/fGIHnDH2nLPBhfXg8ZoI6rAWZewXPs3fiCdVLtVxKN5qCHrwfIOzk
 yq0kZIcFl+vUn3B9ZBT2/6PFjHV0JN+xkmJa4IjniApZyP05znVwVu66ZRPgfy1manp4ctHepA1HP
 rwCjUHGioV1FU3XaiSSKqeWv7ks6TZUzjFhRDsG9qPSfSrGrU51mcuKSG3iEoXeLJ8kHeqfNT//og
 +fgVl8cw==;
Received: from [2601:1c0:6280:3f0::aa0b]
 by merlin.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkTcl-008nze-Vs; Tue, 09 Nov 2021 16:05:28 +0000
To: Pavel Machek <pavel@ucw.cz>, Sasha Levin <sashal@kernel.org>
References: <20211108174453.1187052-1-sashal@kernel.org>
 <20211109075423.GA16766@amd>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <3957633e-9596-e329-c79b-b45e9993d139@infradead.org>
Date: Tue, 9 Nov 2021 08:05:23 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211109075423.GA16766@amd>
Content-Language: en-US
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
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Charan Teja Reddy <charante@codeaurora.org>,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On 11/8/21 11:54 PM, Pavel Machek wrote:
> Hi!
> 
> This series is truncated .. I only got first patches. Similary, 5.10
> series is truncated, [PATCH AUTOSEL 5.10 035/101] media: s5p-mfc: Add
> checking to s5p_mfc_probe... is last one I got.
> 
> I got all the patches before that, so I believe it is not problem on
> my side, but I'd not mind someone confirming they are seeing the same
> problem...

Yes, several of the patch series were incomplete for me also...

-- 
~Randy
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
