Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 206B17652AC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jul 2023 13:40:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1268A441AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jul 2023 11:40:31 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id 6C7863F1CC
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jul 2023 11:40:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=n+dzJVef;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.167.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-4fba8f2197bso1403009e87.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jul 2023 04:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690458025; x=1691062825;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CQNTkXPnx3vtxi9gXhe6F8GyptxWIzVy/cR8pZ3VmZI=;
        b=n+dzJVefXszARcjuYn0EuJDKH4yuffGCemwWfVAWg7ZPElofPkCeKOzMNgjDwlIOqj
         XZckvkessVyXYodF1UvhuOECm/TijRGu/fgNH4Ajq4t7HfAFkKQ9KevjJeKXapg8QxHW
         qhH+rrwJheMYUHlt0jYw1zJhoIECYux/vEpfDLj8PIJMtKfbikVMi9jzG2e7RS3fGSfj
         nx40Uk+jo0o91/rxBbIWje2meP7+ZE+Vkr1xHuA8yPoHsa62S9jTQ4//uTfmol4HQqoB
         jvmvyCPRWlpvpuev5zQFMwZfKpPKVlBpIGkDEsMENkPrnv16yVDmHtUOv/17KdjaDH2T
         FFMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690458025; x=1691062825;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CQNTkXPnx3vtxi9gXhe6F8GyptxWIzVy/cR8pZ3VmZI=;
        b=S1aSZMR8vamvl37bZ/Vu+UBTrRvxihIi7kVr++S6JJXV9NTIuY8cg1F2BeV0qv+QH9
         ZoJzJmt8tVRvTTcHaeNwwSafne73RfjUHgV6WWX/nFRDfGLi/fEzQqZSttEVxdrnPOGG
         8FplCkBblBJlnKTRrzI8sS7lRw1FZ4PDNL/9BT8d0V3M+ChADYpHfD6H1yQ1cQWxR26y
         4maBiQJ7PGiJKxqivdqv8wVO3uhkXxvt+9EWnP/BtRV960c6JXVZ6jCl61R+5NJuqWq2
         RiBX9vXBcusKM/62ZKKegx7SO1yR0wFBrktrjhsMH6Ezg3aUghDrHCR/BC9t9UKgS0i3
         r5zA==
X-Gm-Message-State: ABy/qLY0yRu9J43Cyxz6oYPB/z9NCsdLa+IVrMSxyjEY3Gr416qZVuXb
	zmdjzV3M5Snv4nGcOrXsSl4=
X-Google-Smtp-Source: APBJJlFZcJdV/2tsOuTHdZeivtkzWTWVOio476KT8N8lXbV+wlSd2bdlofgtNZw6MIh0NjgWFabYQA==
X-Received: by 2002:a19:5f1c:0:b0:4fd:fc3d:cce7 with SMTP id t28-20020a195f1c000000b004fdfc3dcce7mr1288696lfb.44.1690458024822;
        Thu, 27 Jul 2023 04:40:24 -0700 (PDT)
Received: from ?IPV6:2a00:e180:1511:5300:e4c6:3a45:7174:efa8? ([2a00:e180:1511:5300:e4c6:3a45:7174:efa8])
        by smtp.gmail.com with ESMTPSA id v16-20020a1cf710000000b003fc080acf68sm4459448wmh.34.2023.07.27.04.40.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jul 2023 04:40:23 -0700 (PDT)
Message-ID: <dfe4bae7-13a0-3c5d-d671-f61b375cb0b4@gmail.com>
Date: Thu, 27 Jul 2023 13:40:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Jason Gunthorpe <jgg@ziepe.ca>,
 Stephen Hemminger <stephen@networkplumber.org>
References: <12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
 <CAHS8izNPTwtk+zN7XYt-+ycpT+47LMcRrYXYh=suTXCZQ6-rVQ@mail.gmail.com>
 <ZLbUpdNYvyvkD27P@ziepe.ca> <20230718111508.6f0b9a83@kernel.org>
 <35f3ec37-11fe-19c8-9d6f-ae5a789843cb@kernel.org>
 <20230718112940.2c126677@kernel.org>
 <eb34f812-a866-a1a3-9f9b-7d5054d17609@kernel.org>
 <20230718154503.0421b4cd@kernel.org>
 <CAHS8izPORN=r2-hzYSgN4s_Aoo2dnwoJXrU5Hu=43sb8zsWyhQ@mail.gmail.com>
 <20230719105711.448f8cad@hermes.local> <ZLhww+P+7zhTTUk7@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <ZLhww+P+7zhTTUk7@ziepe.ca>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6C7863F1CC
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.52:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	URIBL_BLOCKED(0.00)[linaro.org:email,mail-lf1-f52.google.com:helo,mail-lf1-f52.google.com:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[23];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[google.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org,amd.com,davemloft.net,redhat.com,arndb.de,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 4C2MQX5UQUB7GIHICII347FLQBJVSS7X
X-Message-ID-Hash: 4C2MQX5UQUB7GIHICII347FLQBJVSS7X
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Mina Almasry <almasrymina@google.com>, Jakub Kicinski <kuba@kernel.org>, David Ahern <dsahern@kernel.org>, Andy Lutomirski <luto@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 00/10] Device Memory TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4C2MQX5UQUB7GIHICII347FLQBJVSS7X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 20.07.23 um 01:24 schrieb Jason Gunthorpe:
> On Wed, Jul 19, 2023 at 10:57:11AM -0700, Stephen Hemminger wrote:
>
>> Naive idea.
>> Would it be possible for process to use mmap() on the GPU memory and then
>> do zero copy TCP receive some how? Or is this what is being proposed.
> It could be possible, but currently there is no API to recover the
> underlying dmabuf from the VMA backing the mmap.

Sorry for being a bit late, have been on vacation.

Well actually this was discussed before to work around problems with 
Windows applications through wine/proton.

Not 100% sure what the outcome of that was, but if I'm not completely 
mistaken getting the fd behind a VMA should be possible.

It might just not be the DMA-buf fd, because we use mmap() re-routing to 
be able to work around problems with the reverse tracking of mappings.

Christian.

>
> Also you can't just take arbitary struct pages from any old VMA and
> make them "netmem"
>
> Jason
> _______________________________________________
> Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
> To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
