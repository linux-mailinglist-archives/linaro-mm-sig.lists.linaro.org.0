Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ADE5BB90B
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 17 Sep 2022 17:18:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8BD5448A56
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 17 Sep 2022 15:18:49 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id 9A95A3EBB0
	for <linaro-mm-sig@lists.linaro.org>; Sat, 17 Sep 2022 15:18:43 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id lh5so13731924ejb.10
        for <linaro-mm-sig@lists.linaro.org>; Sat, 17 Sep 2022 08:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=SXmSD7rQesiFD0RXizg8ZPh0M25mEIP++dLEWBB4dHk=;
        b=n2NBW86burrRr2b0WpKrhi1JUZSvVeLMkC23Lcm9Qv37+oOYky5CqJ/3ccdVKW6sQo
         axRkEBTEAmukfVMIemg2AkkaiO4NzN+HvoVyqqUFAz5iv3g56iFMb3YkysbILeefloOJ
         8xXH+xBGQxuhC3m+irmx/y2PzmwD74AwYtRZlWz9hgRG6OlYkT1knq3+e/uOz9DJrMLo
         fB4lc45a7UTBk7LtE3fdRTvFNQHfCM80/a9Sf89ckLmwtHakonNUYweT4xt30cmwKNyN
         ZQAbuhmxJw9JgsUmesy6dbRumPuf22wS2sS3YQbCQux+gukeQiLGqjc5anTLNl7QjdhW
         ZVGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=SXmSD7rQesiFD0RXizg8ZPh0M25mEIP++dLEWBB4dHk=;
        b=IntjEjssud/e/dZzuoPM89e01Wcm62ZbPpDYZUNLaIdeYr6Irbdw8U0szH7ALG+9/m
         RMy2sos7BUf9quMykTe7W6bWzySHlvBpBoxZGPLZOGHSFhjntFnDjDUxCYeMJnCRFHmB
         p0XP8R+6EoD9FExR5qxg33zJuYdJwniiOEApZ/L2YAbB4yPruIlNbDWcMWN57gX9uaa1
         Di8AbJMjSO+HZEUAPVNjE4ktTZvrD8CgB7J1D6C60OS/vC9813yTgJbPaGIoj5f5/tpX
         stOel4x1gEQnxX81uHoihnICcfgk8shxY1a4QVBVbbUmXG2AWkDwQCk+9EgXvq8uGHYb
         Alvg==
X-Gm-Message-State: ACrzQf1+VZI6WkaJpH+dv1SHC2jh2pm3LhLR6eGwVQRzdYshjHJeikW+
	qydjSX9tWgx3CZO9x/QnWYc=
X-Google-Smtp-Source: AMsMyM4a3iu9JCgycuHuL0IcblQFnT1VvNcPYiEwQVqgZZuK7aIkT2bKq8MW00RxrhCpGKQFNbYSSQ==
X-Received: by 2002:a17:907:7b95:b0:731:113a:d7a2 with SMTP id ne21-20020a1709077b9500b00731113ad7a2mr6812718ejc.377.1663427922507;
        Sat, 17 Sep 2022 08:18:42 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:89be:3f80:f009:10f? ([2a02:908:1256:79a0:89be:3f80:f009:10f])
        by smtp.gmail.com with ESMTPSA id d12-20020aa7d5cc000000b0044e937ddcabsm15886004eds.77.2022.09.17.08.18.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Sep 2022 08:18:41 -0700 (PDT)
Message-ID: <c958d871-9a89-3490-f5e3-3a2441926074@gmail.com>
Date: Sat, 17 Sep 2022 17:18:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20220914164321.2156-1-Arvind.Yadav@amd.com>
 <d2d81ffd-2269-bdc6-0daa-8f3a99306e46@amd.com>
 <33a16b15-3d3c-7485-d021-ee2a727e5391@amd.com>
 <691c421f-1297-cd08-ea70-6750099275b1@amd.com> <YyVmYXGCfTuYUsNb@intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <YyVmYXGCfTuYUsNb@intel.com>
Message-ID-Hash: MQJA3GORSCGKPYQRDCDUCXDP3VKY2OPL
X-Message-ID-Hash: MQJA3GORSCGKPYQRDCDUCXDP3VKY2OPL
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Yadav, Arvind" <arvyadav@amd.com>, Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com, shashank.sharma@amd.com, amaranath.somalapuram@amd.com, Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org, gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MQJA3GORSCGKPYQRDCDUCXDP3VKY2OPL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTcuMDkuMjIgdW0gMDg6MTcgc2NocmllYiBWaWxsZSBTeXJqw6Rsw6Q6DQo+IE9uIFRodSwg
U2VwIDE1LCAyMDIyIGF0IDA2OjA1OjMwUE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+PiBBbSAxNS4wOS4yMiB1bSAxNTowMiBzY2hyaWViIFlhZGF2LCBBcnZpbmQ6DQo+Pj4gT24g
OS8xNS8yMDIyIDU6MzcgUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+IElzIHRoYXQg
c3VmZmljaWVudCB0byBhbGxvdyBydW5uaW5nIGEgZGVza3RvcCBvbiBhbWRncHUgd2l0aCB0aGUN
Cj4+Pj4gZXh0cmEgY2hlY2sgZW5hYmxlZD8gSWYgeWVzIHRoYXQgd291bGQgYmUgcXVpdGUgYSBt
aWxlc3RvbmUuDQo+Pj4+DQo+Pj4gWWVzLCBJdCBpcyBydW5uaW5nIG9uIGFtZGdwdSB3aXRoIGV4
dHJhIGNvbmZpZyBlbmFibGVkLg0KPj4gSW4gdGhpcyBjYXNlIEkgd2lsbCBzdGFydCBwdXNoaW5n
IHRoZSBwYXRjaGVzIHRvIGRybS1taXNjLW5leHQuIEknbSBqdXN0DQo+PiBnb2luZyB0byBsZWF2
ZSBvdXQgdGhlIGxhc3Qgb25lIHVudGlsIHRoZSBJR1QgdGVzdHMgYXJlIHdvcmtpbmcgYXMgd2Vs
bC4NCj4gZmZzIENocmlzdGlhbi4gaW50ZWwgQ0kgYmxldyB1cCB5ZXQgYWdhaW46DQo+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzEyMTQ2L3NoYXJkLWds
azcvaWd0QGttc19wbGFuZV9sb3dyZXNAdGlsaW5nLXlAcGlwZS1jLWhkbWktYS0yLmh0bWwNCj4N
Cj4gVGhlIGxhc3QgdGltZSAoc29tZSB0dG0gdGhpbmcpIHdhcyBqdXN0IGEgd2VlayBvciB0d28g
YWdvLA0KPiBzbyBpdCdzIHJlYWxseSBnZXR0aW5nIHRpcmVzb21lIHdhdGNoaW5nIHlvdSBwdXNo
IGVudGlyZWx5DQo+IHVudGVzdGVkIHN0dWZmIGFsbCB0aGUgdGltZS4gV291bGQgYmUgcmVhbGx5
IGhlbHBmdWwgaWYgeW91DQo+IGZpbmFsbHkgc3RhcnRlZCB0byBkby9yZXF1aXJlIHByZW1lcmdl
IHRlc3RpbmcuDQoNCldlbGwgZmlyc3Qgb2YgYWxsIHNvcnJ5IGZvciBjYXVzaW5nIHRyb3VibGUs
IGJ1dCBhcyBJIHdyb3RlIGFib3ZlIEkgDQppbnRlbnRpb25hbGx5IGxlZnQgb3V0IHRoZSBsYXN0
IG9uZSB0byAqbm90KiBicmVhayB0aGUgSUdUIHRlc3RzLg0KDQpUaGUgcGF0Y2hlcyBwdXNoZWQg
c28gZmFyIHdoZXJlIGp1c3QgdXBkYXRpbmcgYSBidW5jaCBvZiBjb3JuZXIgY2FzZXMgDQphbmQg
Zml4aW5nIHRoZSBzZWxmdGVzdHMuDQoNCkRvIHlvdSBoYXZlIGFueSBtb3JlIGluc2lnaHQgd2h5
IHRoYXQgc2hvdWxkIGFmZmVjdCB0aGUgSUdUIHRlc3RzPw0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFu
Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
