Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC9858BC33
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Aug 2022 20:05:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0A9347F2F
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Aug 2022 18:05:20 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id 9FD3847F13
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Aug 2022 18:05:18 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id w19so12854087ejc.7
        for <linaro-mm-sig@lists.linaro.org>; Sun, 07 Aug 2022 11:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=rJlTAP175XGMtC5oPLKPFRjtzv9qHN9ccgYjtPQsP4A=;
        b=E6N94+8OzRBNvy8eq20JABN+2GNie2mCHWxVQ50cga31PsUjAXbL++4gqbWnZS008o
         ZGUXjtW02ZqUVSj8oAHHrcX1WBuiu+NIoy6prlMJFWOc9+Di6FQhSA2FQNuoiJ+dgssb
         mRrkmiOmO9pzXr5iFxHltjWOi4vD4BhlUrxsLxuOg5iEFl2r8nkvOHpMyOSsUG4JI1iB
         f6zjrsRwD+HSmtnrOTrw/5K31r6nVrSRfy4PJeZB6kLjY+kJlUMICDM05hjccr0hFkkE
         x8FBu4esmgCgsvSa1MfHMKhxGaGlB486g3jVejPHWhDKxCIOJqd5MUjQdTzaX9ydTgVw
         4mXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=rJlTAP175XGMtC5oPLKPFRjtzv9qHN9ccgYjtPQsP4A=;
        b=UPB3y6uf5PF7JIlZ7xBsZ76TqhI9TxlYtME7WV3WTThrBF0/RBIhsFrpYice3s3zsS
         U84Sy6YQA952/VpN1Vnu8sCo8iwWzkUUVJ3dSNP/A/UCSpXq091mOjjn92Jd5uMEenfz
         UThPtAXSMYoAOB1oiKKQ+73YS+WBXEdNz2X+zSrL8LovlbQ5Fr90kGxD1k/dp4AQs7GW
         8geT3/Mho75sQe51iA6L1mvwr3hDm7h2N0xDt2PNDX2r3/qJ+tCJyimGaM+asBu4OIWj
         iKef7Mq92jO/TmWSnbuogbX6RpSxjl834JUKDF+/sOMRbw85P3IElPfWlpORCfjvNFv8
         OwBw==
X-Gm-Message-State: ACgBeo0s1b2KKT/OCiaFKiXA5RsVhDoK6PFrNiaYospoce20NFZGoDJ/
	abZNqsa7M1KS3x0dDzmFjRU=
X-Google-Smtp-Source: AA6agR5O/T3LDq69E1iimyzb1QsQDMW15ghtqaKeXLaYNdLHq9XyC/fhmjiAkZTyvpYAzxf6sdHmVA==
X-Received: by 2002:a17:907:75d5:b0:730:b051:d93f with SMTP id jl21-20020a17090775d500b00730b051d93fmr11156869ejc.568.1659895517545;
        Sun, 07 Aug 2022 11:05:17 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:f019:ef7b:173c:a9d2? ([2a02:908:1256:79a0:f019:ef7b:173c:a9d2])
        by smtp.gmail.com with ESMTPSA id 2-20020a170906200200b0073100dfa7b0sm3032911ejo.8.2022.08.07.11.05.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Aug 2022 11:05:17 -0700 (PDT)
Message-ID: <e2423bd7-ef73-8d43-c661-a19c80ad1a26@gmail.com>
Date: Sun, 7 Aug 2022 20:05:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>
References: <20220729170744.1301044-1-robdclark@gmail.com>
 <20220729170744.1301044-2-robdclark@gmail.com>
 <3d2083aa-fc6c-6875-3daf-e5abe45fb762@gmail.com>
 <CAF6AEGvKdM3vyCvBZK=ZcdGmak7tsrP1b8ANyyaMjVfNDViqyw@mail.gmail.com>
 <973de2f8-75e4-d4c7-a13a-c541a6cf7c77@amd.com>
 <CAF6AEGuhQT6A_jh8kLWh5xMoUGc1osdewyBk-8NoprtWOHseaQ@mail.gmail.com>
 <2fc74efe-220f-b57a-e804-7d2b3880d14f@gmail.com>
 <CAF6AEGv9H+fSFKPNqwPxYUjkgj05AimpXbp-p_JL8nKLnzON=w@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <CAF6AEGv9H+fSFKPNqwPxYUjkgj05AimpXbp-p_JL8nKLnzON=w@mail.gmail.com>
Message-ID-Hash: BD43MVBFT2XZW7BBTMHKDU7TOGEBQCAY
X-Message-ID-Hash: BD43MVBFT2XZW7BBTMHKDU7TOGEBQCAY
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, freedreno@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf: Add ioctl to query mmap info
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BD43MVBFT2XZW7BBTMHKDU7TOGEBQCAY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDcuMDguMjIgdW0gMTk6NTYgc2NocmllYiBSb2IgQ2xhcms6DQo+IE9uIFN1biwgQXVnIDcs
IDIwMjIgYXQgMTA6MzggQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2tvZW5pZy5sZWljaHR6dW1l
cmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPj4gW1NOSVBdDQo+PiBBbmQgZXhhY3RseSB0aGF0IHdh
cyBkZWNsYXJlZCBjb21wbGV0ZWx5IGlsbGVnYWwgdGhlIGxhc3QgdGltZSBpdCBjYW1lDQo+PiB1
cCBvbiB0aGUgbWFpbGluZyBsaXN0Lg0KPj4NCj4+IERhbmllbCBpbXBsZW1lbnRlZCBhIHdob2xl
IGJ1bmNoIG9mIHBhdGNoZXMgaW50byB0aGUgRE1BLWJ1ZiBsYXllciB0bw0KPj4gbWFrZSBpdCBp
bXBvc3NpYmxlIGZvciBLVk0gdG8gZG8gdGhpcy4NCj4gVGhpcyBpc3N1ZSBpc24ndCByZWFsbHkg
d2l0aCBLVk0sIGl0IGlzIG5vdCBtYWtpbmcgYW55IENQVSBtYXBwaW5ncw0KPiBpdHNlbGYuICBL
Vk0gaXMganVzdCBtYWtpbmcgdGhlIHBhZ2VzIGF2YWlsYWJsZSB0byB0aGUgZ3Vlc3QuDQoNCldl
bGwgSSBjYW4gb25seSByZXBlYXQgbXlzZWxmOiBUaGlzIGlzIHN0cmljdGx5IGlsbGVnYWwuDQoN
ClBsZWFzZSB0cnkgdGhpcyBhcHByb2FjaCB3aXRoIENPTkZJR19ETUFCVUZfREVCVUcgc2V0LiBJ
J20gcHJldHR5IHN1cmUgDQp5b3Ugd2lsbCBpbW1lZGlhdGVseSBydW4gaW50byBhIGNyYXNoLg0K
DQpTZWUgdGhpcyBoZXJlIGFzIHdlbGwgDQpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51
eC92NS4xOS9zb3VyY2UvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyNMNjUzDQoNCkRhbmllbCBp
bnRlbnRpb25hbGx5IGFkZGVkIGNvZGUgdG8gbWFuZ2xlIHRoZSBwYWdlIHBvaW50ZXJzIHRvIG1h
a2UgaXQgDQppbXBvc3NpYmxlIGZvciBLVk0gdG8gZG8gdGhpcy4NCg0KSWYgdGhlIHZpcnRpby92
aXJ0Z3B1IFVBUEkgd2FzIGJ1aWxkIGFyb3VuZCB0aGUgaWRlYSB0aGF0IHRoaXMgaXMgDQpwb3Nz
aWJsZSB0aGVuIGl0IGlzIG1vc3QgbGlrZWx5IGZ1bmRhbWVudGFsIGJyb2tlbi4NCg0KUmVnYXJk
cywNCkNocmlzdGlhbi4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
