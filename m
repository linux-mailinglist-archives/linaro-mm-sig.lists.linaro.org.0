Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBC93AFD1F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 08:37:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C49163E52
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 06:37:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 159876451D; Tue, 22 Jun 2021 06:37:25 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D45E63524;
	Tue, 22 Jun 2021 06:37:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3370A61A3A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 06:37:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 30FEF63524; Tue, 22 Jun 2021 06:37:21 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by lists.linaro.org (Postfix) with ESMTPS id 297EA61A3C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 06:37:19 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id n20so22115185edv.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 23:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ARIuYpj0vICVBtmBb3c3c4gAgJZM8iqcs3K8o/EZTjo=;
 b=iUMD7Hk4c0JkMp0x+Dln9bhYJl3rjQlccq+p6tXmffk7ioCjS8gyxJDmuE2F7hDSBG
 Q0jOeZOZhTzxMfBICEbNTh9/Hq32KI8q0jafUrAZCH9VDqxOdZz0dXaIFuqWf8JraUMB
 pi0Wp3RzfTBmK6ItILEqsfyOYMKzBA297ivkmXyjnj0CS/vsXqIHIXrlTmB1v2H6XbwN
 wOKF5bKVP+qVPcmezEpyZoFS/gYtwvIJqwfbPTI/O7tFB0pWdBN4wRsabWnEMOS1aLPZ
 c1zX7Y9N87rIPOQ08tAtdwRUrJ4Xm0aYh9w4Yz9mk8vxFfb+XAlj6yNpGBCFeU8xa65N
 a8Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ARIuYpj0vICVBtmBb3c3c4gAgJZM8iqcs3K8o/EZTjo=;
 b=P92tdwNEas6uc8dyerObSQi7oUjHxgiPEQ7RFdktjtwyiNVIfDdZ05o5NpaobXKphx
 Q92B3IRnXdHMdrJqRdN+aNYORL++ZjGC9ipoy1qMsEfX1BKJo++Ynnz8vjT0ING+Yayi
 M13SlFeBke1C8JBqQF1JCEU6PFcJqRR4ka6ne8BP89iZQvUqDiY+h0LRe2YdPle662BQ
 O36pS5Kr1hAq31NbN+hMmdJ7wuYpdNpAV+oGWu03EpnVEzVeC7lGaZD1d+6u2jwW1uG2
 FmkN5ku8EwjQMnad00LEnFRn2sB8Kx9zSWEO/ENF54i6a349EYB2MwR5zk1Hmfrrx67u
 CsBw==
X-Gm-Message-State: AOAM532VxgvzffAnjyRTIOFIB1E6XmDp4n7eWsbl5gkqirMltEKxDfkB
 YoeWfNqBLAk8eNWTgxK58R4=
X-Google-Smtp-Source: ABdhPJwiVGo3pmIkaPSyoKltDY97MiB1i1xd6tbT4Ywmxox6TqJUxOsJ5UQwUuiz7VochB1nnWV0Fg==
X-Received: by 2002:aa7:d34f:: with SMTP id m15mr2693414edr.311.1624343837985; 
 Mon, 21 Jun 2021 23:37:17 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:9dfd:8ca7:7f8d:67e4?
 ([2a02:908:1252:fb60:9dfd:8ca7:7f8d:67e4])
 by smtp.gmail.com with ESMTPSA id f14sm1006382edd.69.2021.06.21.23.37.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Jun 2021 23:37:17 -0700 (PDT)
To: Jason Gunthorpe <jgg@ziepe.ca>, Oded Gabbay <oded.gabbay@gmail.com>
References: <20210618123615.11456-1-ogabbay@kernel.org>
 <CAKMK7uFOfoxbD2Z5mb-qHFnUe5rObGKQ6Ygh--HSH9M=9bziGg@mail.gmail.com>
 <YNCN0ulL6DQiRJaB@kroah.com> <20210621141217.GE1096940@ziepe.ca>
 <CAFCwf10KvCh0zfHEHqYR-Na6KJh4j+9i-6+==QaMdHHpLH1yEA@mail.gmail.com>
 <20210621175511.GI1096940@ziepe.ca>
 <CAKMK7uEO1_B59DtM7N2g7kkH7pYtLM_WAkn+0f3FU3ps=XEjZQ@mail.gmail.com>
 <CAFCwf11jOnewkbLuxUESswCJpyo7C0ovZj80UrnwUOZkPv2JYQ@mail.gmail.com>
 <20210621232912.GK1096940@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <d358c740-fd3a-9ecd-7001-676e2cb44ec9@gmail.com>
Date: Tue, 22 Jun 2021 08:37:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210621232912.GK1096940@ziepe.ca>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/2] habanalabs: define uAPI to
 export FD for DMA-BUF
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
Cc: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linux-rdma <linux-rdma@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Oded Gabbay <ogabbay@kernel.org>, Gal Pressman <galpress@amazon.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Tomer Tayar <ttayar@habana.ai>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>, Christoph Hellwig <hch@lst.de>,
 sleybo@amazon.com, Leon Romanovsky <leonro@nvidia.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Am 22.06.21 um 01:29 schrieb Jason Gunthorpe:
> On Mon, Jun 21, 2021 at 10:24:16PM +0300, Oded Gabbay wrote:
>
>> Another thing I want to emphasize is that we are doing p2p only
>> through the export/import of the FD. We do *not* allow the user to
>> mmap the dma-buf as we do not support direct IO. So there is no access
>> to these pages through the userspace.
> Arguably mmaping the memory is a better choice, and is the direction
> that Logan's series goes in. Here the use of DMABUF was specifically
> designed to allow hitless revokation of the memory, which this isn't
> even using.

The major problem with this approach is that DMA-buf is also used for 
memory which isn't CPU accessible.

That was one of the reasons we didn't even considered using the mapping 
memory approach for GPUs.

Regards,
Christian.

>
> So you are taking the hit of very limited hardware support and reduced
> performance just to squeeze into DMABUF..
>
> Jason
> _______________________________________________
> Linaro-mm-sig mailing list
> Linaro-mm-sig@lists.linaro.org
> https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
