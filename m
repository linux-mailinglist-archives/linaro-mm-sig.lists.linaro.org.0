Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6452C3BE7B6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jul 2021 14:17:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E93866948
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jul 2021 12:17:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EDA7266956; Wed,  7 Jul 2021 12:17:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85423632DE;
	Wed,  7 Jul 2021 12:17:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 787B660B5A
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Jul 2021 12:17:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6168F632DE; Wed,  7 Jul 2021 12:17:16 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 5949660B5A
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Jul 2021 12:17:14 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id a13so2784625wrf.10
 for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Jul 2021 05:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=gFcpO09X9eqmjEev1StyvxVCY7X0AALnaeQkmkAwWuA=;
 b=ZjJsQUBAGSRzwkesl+g70QlwkbvYhuHJtn9TzO41zn/XqXK0HsPfSJXxQ1uubM80r2
 QYeHYcYzl3pdaIKusWL8Cd7Wu51RMb/uf3qRgfVEUeKySy/8psgPpeGYTaM+zPTnUhPF
 9xKe5V78YV9n8JpqoYRiJqSsCkiLrBbIA9ZtSqYpocicMRidvhtcTJamlaqtccNRyFEN
 02DbkAeA4CUIOThsqvoQeKbSJh5ta3Oe42xfSOVaXDxn0ln/B0etndt5ICGG0ZrG3npQ
 LpRDrwUb4cIJSkCzDubfh19bl4gMUkqIeaYnL4XjUhz4gGqkC155BwFDxgWq0MBa3QsZ
 xebw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=gFcpO09X9eqmjEev1StyvxVCY7X0AALnaeQkmkAwWuA=;
 b=t0DuATXrez2F6vm6DyJ0Zhwsp2Q9hOX56bPxWDTXDzzEzAUYB7aLEPGxtzC3mMaBTw
 bim1bi3TzKK4UB+oUyH/tU86VosmTBHqutFpDw9MZbm1Nn2JJtDjHgD3m7a2aV+Do4jc
 A4GEih/CgypCnP6/Eh60CVA9MMKvw57NgbKALumKtgmd4JAIfcN7Q8G+8fqdUsyuqN0W
 0QgC3c+eCFrO3Y6t29f/pJVZQWq+9cwHEtHGDeEnJmW7DZ4OizQMmcotK0BzcUBZwpdw
 ofxLaqKBseYyaKIp78Fv+lZyvM0LVVJoA5KjuJ7YMDu3MFPPZqyjfnOdJ+8KcAqJ5PiS
 Ofjg==
X-Gm-Message-State: AOAM532w3B+vPoMN3XdFWVSMuH2bCywk6v8uWxESuhSkNfR1KVKyhHYp
 YMOXtDlOZ3iwYaTa8iXu4Xz09ywoECQ=
X-Google-Smtp-Source: ABdhPJw+KpKKmv799GNloUfwlu8fKZlyMeia+T+6lyR5kx2E0g6ByA5UB8esUFEyQkPer8zSwXyRww==
X-Received: by 2002:a5d:680b:: with SMTP id w11mr15450397wru.426.1625660233375; 
 Wed, 07 Jul 2021 05:17:13 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:7671:3328:2129:96b5?
 ([2a02:908:1252:fb60:7671:3328:2129:96b5])
 by smtp.gmail.com with ESMTPSA id u2sm13550473wmc.42.2021.07.07.05.17.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Jul 2021 05:17:12 -0700 (PDT)
To: Christoph Hellwig <hch@lst.de>, Oded Gabbay <ogabbay@kernel.org>,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org,
 sumit.semwal@linaro.org, christian.koenig@amd.com, galpress@amazon.com,
 sleybo@amazon.com, dri-devel@lists.freedesktop.org, jgg@ziepe.ca,
 linux-rdma@vger.kernel.org, linux-media@vger.kernel.org,
 dledford@redhat.com, airlied@gmail.com, alexander.deucher@amd.com,
 leonro@nvidia.com, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20210705130314.11519-1-ogabbay@kernel.org>
 <YOQXBWpo3whVjOyh@phenom.ffwll.local> <20210706122110.GA18273@lst.de>
 <YORLTmyoXDtoM9Ta@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <9af554b1-e4d8-4dd4-5a6a-830f3112941d@gmail.com>
Date: Wed, 7 Jul 2021 14:17:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YORLTmyoXDtoM9Ta@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4 0/2] Add p2p via dmabuf to habanalabs
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Am 06.07.21 um 14:23 schrieb Daniel Vetter:
> On Tue, Jul 06, 2021 at 02:21:10PM +0200, Christoph Hellwig wrote:
>> On Tue, Jul 06, 2021 at 10:40:37AM +0200, Daniel Vetter wrote:
>>>> Greg, I hope this will be good enough for you to merge this code.
>>> So we're officially going to use dri-devel for technical details review
>>> and then Greg for merging so we don't have to deal with other merge
>>> criteria dri-devel folks have?
>>>
>>> I don't expect anything less by now, but it does make the original claim
>>> that drivers/misc will not step all over accelerators folks a complete
>>> farce under the totally-not-a-gpu banner.
>>>
>>> This essentially means that for any other accelerator stack that doesn't
>>> fit the dri-devel merge criteria, even if it's acting like a gpu and uses
>>> other gpu driver stuff, you can just send it to Greg and it's good to go.
>>>
>>> There's quite a lot of these floating around actually (and many do have
>>> semi-open runtimes, like habanalabs have now too, just not open enough to
>>> be actually useful). It's going to be absolutely lovely having to explain
>>> to these companies in background chats why habanalabs gets away with their
>>> stack and they don't.
>> FYI, I fully agree with Daniel here.  Habanlabs needs to open up their
>> runtime if they want to push any additional feature in the kernel.
>> The current situation is not sustainable.
> Before anyone replies: The runtime is open, the compiler is still closed.
> This has become the new default for accel driver submissions, I think
> mostly because all the interesting bits for non-3d accelerators are in the
> accel ISA, and no longer in the runtime. So vendors are fairly happy to
> throw in the runtime as a freebie.

Well a compiler and runtime makes things easier, but the real question 
is if they are really required for upstreaming a kernel driver?

I mean what we need is to be able to exercise the functionality. So 
wouldn't (for example) an assembler be sufficient?

> It's still incomplete, and it's still useless if you want to actually hack
> on the driver stack.

Yeah, when you want to hack on it in the sense of extending it then this 
requirement is certainly true.

But as far as I can see userspace don't need to be extendable to justify 
a kernel driver. It just needs to have enough glue to thoughtfully 
exercise the relevant kernel interfaces.

Applying that to GPUs I think what you need to be able to is to write 
shaders, but that doesn't need to be in a higher language requiring a 
compiler and runtime. Released opcodes and a low level assembler should 
be sufficient.

Regards,
Christian.

> -Daniel

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
