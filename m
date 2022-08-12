Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A55359101B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Aug 2022 13:34:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5051F3F512
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Aug 2022 11:34:09 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id DB9343F04C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Aug 2022 11:34:06 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id a7so1564808ejp.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Aug 2022 04:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=2maBmCwKBmigg6muaEXXhf/Ng5GHmKY483ELQvBK7bw=;
        b=WzmVA6wJmViKgJcjJ28fwTes4+4nkLVN3Mx6n7aAByQjaF1kqlO8c/DkZzzNbQ5PMJ
         Q6QRifhtEywKPW0BRycraqPgJbNNV4Fkr0BDi9NwSjofj+/eExHcmIHXfmWBqj8nEM+V
         SJ6yUML0yO8yFd9lLsoNczBtQtybcTMT4WUr1ptuUKBS3/Rda9YC3hjAtXIBeNWzrfQv
         8awekeP8HdFvSg9RwEt6hfJjxWj4IHX4MucvbIt4QDscDPd/6Xe/c8eYLuCx5yo9ewIX
         pCKNLJxEdZn4+tUGCfNxm+c1cgbj7a+b8mhWZ+qT9Wu2+c+9oyIWqC1lkYhae0HgqZSg
         TC0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=2maBmCwKBmigg6muaEXXhf/Ng5GHmKY483ELQvBK7bw=;
        b=gwfmjQn6QWur4XZYwOq3alwoVRgluxc/oaoLd1+ogdDYvvNMAWrW6tvuaGaCKImR2j
         WfHw+/LSt4PmfAgdZ37BvIzufB8iKoOvqjl8rsDci/prrMFktIPKkfbcxmJC/Z6u+mdB
         gmVpG/LZJp5omAkx8h6TkabKsQgmxdBMtJF3VNfiN429xrRJfSevNgLdeJeScNkLNQjR
         3IIh15n+gGmQw+oYAWYCz1JFqzv0Z9oQa/DlV+fKe93EuEtKsLgf+G8LcEnvTpLauZ9Q
         hkrfsiczdTd+2aJbT4oHpAkqsnyw6RxacpqZ3fRr/auoKx/GPKnH+sWexQwfGRTXbS6U
         7djw==
X-Gm-Message-State: ACgBeo35BLHkApjZUsMpRcLctXrjSKsOM2nTwkDyM9JuhBNl/LMQZWxg
	TNDYII5OkBUValEq5kpQUU8=
X-Google-Smtp-Source: AA6agR7yLrz2JyTe8JHAoaW31lDloNP6q9ah/gkL0Xj0JLrU44S+nATJXnQ7Xvnv8KPuB3tTB73pJw==
X-Received: by 2002:a17:906:eeca:b0:730:6880:c397 with SMTP id wu10-20020a170906eeca00b007306880c397mr2352637ejb.593.1660304045907;
        Fri, 12 Aug 2022 04:34:05 -0700 (PDT)
Received: from [192.168.178.21] (p57b0bd9f.dip0.t-ipconnect.de. [87.176.189.159])
        by smtp.gmail.com with ESMTPSA id jj23-20020a170907985700b0073151ce7726sm696022ejc.100.2022.08.12.04.34.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 04:34:05 -0700 (PDT)
Message-ID: <93484389-1f79-b364-700f-60769fc5f8a5@gmail.com>
Date: Fri, 12 Aug 2022 13:34:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20220725151839.31622-1-dmitry.osipenko@collabora.com>
 <20220725151839.31622-4-dmitry.osipenko@collabora.com>
 <6c8bded9-1809-608f-749a-5ee28b852d32@gmail.com>
 <562fbacf-3673-ff3c-23a1-124284b4456c@collabora.com>
 <87724722-b9f3-a016-c25c-4b0415f2c37f@amd.com>
 <0863cafa-c252-e194-3d23-ef640941e36e@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <0863cafa-c252-e194-3d23-ef640941e36e@collabora.com>
Message-ID-Hash: LXMISEFRNQPGPFIV4DW32TUQVDYKITGC
X-Message-ID-Hash: LXMISEFRNQPGPFIV4DW32TUQVDYKITGC
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thier
 ry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/5] dma-buf: Move all dma-bufs to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LXMISEFRNQPGPFIV4DW32TUQVDYKITGC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCkFtIDEwLjA4LjIyIHVtIDIwOjUzIHNjaHJpZWIgRG1pdHJ5IE9zaXBlbmtvOg0KPiBPbiA4
LzEwLzIyIDIxOjI1LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gQW0gMTAuMDguMjIgdW0g
MTk6NDkgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+Pj4gT24gOC8xMC8yMiAxNDozMCwgQ2hy
aXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+Pj4gQW0gMjUuMDcuMjIgdW0gMTc6MTggc2NocmllYiBE
bWl0cnkgT3NpcGVua286DQo+Pj4+PiBUaGlzIHBhdGNoIG1vdmVzIHRoZSBub24tZHluYW1pYyBk
bWEtYnVmIHVzZXJzIG92ZXIgdG8gdGhlIGR5bmFtaWMNCj4+Pj4+IGxvY2tpbmcgc3BlY2lmaWNh
dGlvbi4gVGhlIHN0cmljdCBsb2NraW5nIGNvbnZlbnRpb24gcHJldmVudHMgZGVhZGxvY2sNCj4+
Pj4+IHNpdHVhdGlvbiBmb3IgZG1hLWJ1ZiBpbXBvcnRlcnMgYW5kIGV4cG9ydGVycy4NCj4+Pj4+
DQo+Pj4+PiBQcmV2aW91c2x5IHRoZSAidW5sb2NrZWQiIHZlcnNpb25zIG9mIHRoZSBkbWEtYnVm
IEFQSSBmdW5jdGlvbnMgd2VyZW4ndA0KPj4+Pj4gdGFraW5nIHRoZSByZXNlcnZhdGlvbiBsb2Nr
IGFuZCB0aGlzIHBhdGNoIG1ha2VzIHRoZW0gdG8gdGFrZSB0aGUgbG9jay4NCj4+Pj4+DQo+Pj4+
PiBJbnRlbCBhbmQgQU1EIEdQVSBkcml2ZXJzIGFscmVhZHkgd2VyZSBtYXBwaW5nIGltcG9ydGVk
IGRtYS1idWZzIHVuZGVyDQo+Pj4+PiB0aGUgaGVsZCBsb2NrLCBoZW5jZSB0aGUgImxvY2tlZCIg
dmFyaWFudCBvZiB0aGUgZnVuY3Rpb25zIGFyZSBhZGRlZA0KPj4+Pj4gZm9yIHRoZW0gYW5kIHRo
ZSBkcml2ZXJzIGFyZSB1cGRhdGVkIHRvIHVzZSB0aGUgImxvY2tlZCIgdmVyc2lvbnMuDQo+Pj4+
IEluIGdlbmVyYWwgIlllcywgcGxlYXNlIiwgYnV0IHRoYXQgd29uJ3QgYmUgdGhhdCBlYXN5Lg0K
Pj4+Pg0KPj4+PiBZb3Ugbm90IG9ubHkgbmVlZCB0byBjaGFuZ2UgYW1kZ3B1IGFuZCBpOTE1LCBi
dXQgYWxsIGRyaXZlcnMNCj4+Pj4gaW1wbGVtZW50aW5nIHRoZSBtYXBfZG1hX2J1ZigpLCB1bm1h
cF9kbWFfYnVmKCkgY2FsbGJhY2tzLg0KPj4+Pg0KPj4+PiBBdWRpdGluZyBhbGwgdGhhdCBjb2Rl
IGlzIGEgaHVnZSBidW5jaCBvZiB3b3JrLg0KPj4+IEhtLCBuZWl0aGVyIG9mIGRyaXZlcnMgdGFr
ZSB0aGUgcmVzdiBsb2NrIGluIG1hcF9kbWFfYnVmL3VubWFwX2RtYV9idWYuDQo+Pj4gSXQncyBl
YXN5IHRvIGF1ZGl0IHRoZW0gYWxsIGFuZCBJIGRpZCBpdC4gU28gZWl0aGVyIEknbSBtaXNzaW5n
DQo+Pj4gc29tZXRoaW5nIG9yIGl0IGRvZXNuJ3QgdGFrZSBtdWNoIHRpbWUgdG8gY2hlY2sgdGhl
bSBhbGwuIEFtIEkgcmVhbGx5DQo+Pj4gbWlzc2luZyBzb21ldGhpbmc/DQo+PiBPaywgc28gdGhp
cyBpcyBvbmx5IGNoYW5naW5nIG1hcC91bm1hcCBub3c/DQo+IEl0IGFsc28gdm1hcC92dW5tYXAg
YW5kIGF0dGFjaC9kZXRhY2g6IEluIHRoZSBwcmV2aW91cyBwYXRjaCBJIGFkZGVkIHRoZQ0KPiBf
dW5sb2NrZWQgcG9zdGZpeCB0byB0aGUgZnVuYyBuYW1lcyBhbmQgaW4gdGhpcyBwYXRjaCBJIG1h
ZGUgdGhlbSBhbGwgdG8NCj4gYWN0dWFsbHkgdGFrZSB0aGUgbG9jay4NCg0KDQpUYWtlIHlvdXIg
cGF0Y2ggIltQQVRDSCB2MiAyLzVdIGRybS9nZW06IFRha2UgcmVzZXJ2YXRpb24gbG9jayBmb3Ig
DQp2bWFwL3Z1bm1hcCBvcGVyYXRpb25zIiBhcyBhIGJsdWVwcmludCBvbiBob3cgdG8gYXBwcm9h
Y2ggaXQuDQoNCkUuZy4gb25lIGNhbGxiYWNrIGF0IGEgdGltZSBhbmQgdGhlbiBkb2N1bWVudCB0
aGUgcmVzdWx0IGluIHRoZSBlbmQuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4+IElu
IHRoaXMgY2FzZSBwbGVhc2Ugc2VwYXJhdGUgdGhpcyBmcm9tIHRoZSBkb2N1bWVudGF0aW9uIGNo
YW5nZS4NCj4gSSdsbCBmYWN0b3Igb3V0IHRoZSBkb2MgaW4gdGhlIHYzLg0KPg0KPj4gSSB3b3Vs
ZCBhbHNvIGRyb3AgdGhlIF9sb2NrZWQgcG9zdGZpeCBmcm9tIHRoZSBmdW5jdGlvbiBuYW1lLCBq
dXN0DQo+PiBoYXZpbmcgX3VubG9ja2VkIG9uIGFsbCBmdW5jdGlvbnMgd2hpY2ggYXJlIHN1cHBv
c2VkIHRvIGJlIGNhbGxlZCB3aXRoDQo+PiB0aGUgbG9jayBoZWxkIHNob3VsZCBiZSBzdWZmaWNp
ZW50Lg0KPiBOb3RlZCBmb3IgdGhlIHYzLg0KPg0KPj4gVGhhbmtzIGZvciBsb29raW5nIGludG8g
dGhpcywNCj4+IENocmlzdGlhbi4NCj4gVGhhbmsgeW91IGZvciB0aGUgcmV2aWV3Lg0KPg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
