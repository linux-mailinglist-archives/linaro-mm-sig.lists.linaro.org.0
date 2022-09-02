Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F355AAC69
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 Sep 2022 12:32:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFE7F479BF
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 Sep 2022 10:32:04 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by lists.linaro.org (Postfix) with ESMTPS id EA4A63F1C7
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 Sep 2022 10:31:59 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id r27so1376062ljn.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 02 Sep 2022 03:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=oS1FPn188GwYqcEpeAiuLHN0qFHFB655DOQwCXbqud0=;
        b=n3OAhLhYLpZxMnQfsFjiyUnhcv12eKqug64v55vPtpE/UCjJaNIZHCA+Wwv+6WbtT/
         qWkYjCAk4Yjkuctjw0fBnbyysWH+4pCHaxR5XU+s4CKQjBA8zqhlLNk/otAC43pVbwk/
         +Oxsn+VvggqMRnSHBrZ+4CWc9VjYKgT5IxVQ6II8ncEcyJrTjiDJmp2cyMJgIaGZlVbQ
         +Ann9KO6Y/CoglJHcaRMsiN1jERvtH9CBEqaVN6GF/whofd6gb7RHL1HfeSFl8tQ1bkZ
         Wfhpb2x7/mkxuV0CZPD44CTBUcnCyTj5Pbq+/Suo58ul0XAxasomkcmrFrUsPxyLaF5j
         07AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=oS1FPn188GwYqcEpeAiuLHN0qFHFB655DOQwCXbqud0=;
        b=mbp1KBA05llKIP7jEd0rr3vkc8Fwl1WV098Hk6ZKe5nA4798x9ekqJenyB6tj8tOxz
         4dRy5Jce8cOXJr1NBX7V7CsegAmciz27zaibOxTDmRmnhUqKmnSeGIubSFVb2Q3H/+H7
         wdeMzQzxZe04wh+VxS7vzTTQAJ5vpmN9BxRfEWG2EGLlxRpZezLkku61J3Y1i659sjlc
         9fUtlxFlweNtLzA2CoCxv2KTWHhYhzT20GPtf7v7lUHqvmanrsgAa14DN2R1WgZ+CSl9
         utd2aW/dkLUmEsGAklFf1RJpBDUnDDgkbPwqILXQDX6jHRwV3f5v5OArq6/v48Gpl+3E
         +yMQ==
X-Gm-Message-State: ACgBeo0I+2pkXVHcyimF5c41vWjBpxi/n0wt2iFcssOrcEAc+NQRjUOI
	m22zgJjVamesvGKAPzjgH4Y=
X-Google-Smtp-Source: AA6agR6ou/2uO4ZwPmqiUBrbDeggu1Vc3sPE8fBViDweS453cB4ryN7X8CzDyYJrxfL2DeihrtrS8A==
X-Received: by 2002:a05:651c:4cf:b0:265:3ba8:92f7 with SMTP id e15-20020a05651c04cf00b002653ba892f7mr6302546lji.105.1662114718656;
        Fri, 02 Sep 2022 03:31:58 -0700 (PDT)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru. [109.252.119.13])
        by smtp.googlemail.com with ESMTPSA id u9-20020ac258c9000000b0048b064707ebsm205794lfo.103.2022.09.02.03.31.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Sep 2022 03:31:58 -0700 (PDT)
Message-ID: <760b999f-b15d-102e-8bc7-c3e69f07f43f@gmail.com>
Date: Fri, 2 Sep 2022 13:31:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
 <20220831153757.97381-7-dmitry.osipenko@collabora.com>
 <DM5PR11MB1324088635FDE00B0D957816C17B9@DM5PR11MB1324.namprd11.prod.outlook.com>
From: Dmitry Osipenko <digetx@gmail.com>
In-Reply-To: <DM5PR11MB1324088635FDE00B0D957816C17B9@DM5PR11MB1324.namprd11.prod.outlook.com>
Message-ID-Hash: UGBFRN465RMGLPDSQT76EB6YHIPS6MBY
X-Message-ID-Hash: UGBFRN465RMGLPDSQT76EB6YHIPS6MBY
X-MailFrom: digetx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "kernel@collabora.com" <kernel@collabora.com>, "virtualization@lists.linux-foundation.org" <virtualization@lists.linux-foundation.org>, "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tome
 u.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Qiang Yu <yuq825@gmail.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, "Gross, Jurgen" <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>, Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>, Christian Gmeiner <christian.gmeiner@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/21] drm/i915: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UGBFRN465RMGLPDSQT76EB6YHIPS6MBY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

MDEuMDkuMjAyMiAxNzowMiwgUnVobCwgTWljaGFlbCBKINC/0LjRiNC10YI6DQouLi4NCj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYw0KPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jDQo+PiBAQCAtMzMxLDcg
KzMzMSwxOSBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfZ2VtX2ZyZWVfb2JqZWN0cyhzdHJ1Y3QNCj4+
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+PiAJCQljb250aW51ZTsNCj4+IAkJfQ0KPj4NCj4+
ICsJCS8qDQo+PiArCQkgKiBkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoKSByZXF1aXJlcyByZXNl
cnZhdGlvbiB0byBiZQ0KPj4gKwkJICogbG9ja2VkLiBUaGUgaW1wb3J0ZWQgR0VNIHNob3VsZG4n
dCBzaGFyZSByZXNlcnZhdGlvbiBsb2NrLA0KPj4gKwkJICogc28gaXQncyBzYWZlIHRvIHRha2Ug
dGhlIGxvY2suDQo+PiArCQkgKi8NCj4+ICsJCWlmIChvYmotPmJhc2UuaW1wb3J0X2F0dGFjaCkN
Cj4+ICsJCQlpOTE1X2dlbV9vYmplY3RfbG9jayhvYmosIE5VTEwpOw0KPiANCj4gVGhlcmUgaXMg
YSBsb3Qgb2Ygc3R1ZmYgZ29pbmcgaGVyZS4gIFRha2luZyB0aGUgbG9jayBtYXkgYmUgcHJlbWF0
dXJlLi4uDQo+IA0KPj4gCQlfX2k5MTVfZ2VtX29iamVjdF9wYWdlc19maW5pKG9iaik7DQo+IA0K
PiBUaGUgaTkxNV9nZW1fZG1hYnVmLmM6aTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlc19kbWFidWYg
aXMgd2hlcmUNCj4gdW5tYXBfYXR0YWNobWVudCBpcyBhY3R1YWxseSBjYWxsZWQsIHdvdWxkIGl0
IG1ha2UgbW9yZSBzZW5zZSB0byBtYWtlDQo+IGRvIHRoZSBsb2NraW5nIHRoZXJlPw0KDQpUaGUg
X19pOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzKCkgaXMgaW52b2tlZCB3aXRoIGEgaGVsZCByZXNl
cnZhdGlvbg0KbG9jaywgd2hpbGUgZnJlZWluZyBvYmplY3QgaXMgYSBzcGVjaWFsIHRpbWUgd2hl
biB3ZSBrbm93IHRoYXQgR0VNIGlzDQp1bnVzZWQuDQoNClRoZSBfX2k5MTVfZ2VtX2ZyZWVfb2Jq
ZWN0cygpIHdhcyB0YWtpbmcgdGhlIGxvY2sgdHdvIHdlZWtzIGFnbyB1bnRpbA0KdGhlIGNoYW5n
ZSBtYWRlIENocmlzIFdpbHNvbiBbMV0gcmVhY2hlZCBsaW51eC1uZXh0Lg0KDQpbMV0NCmh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4
dC5naXQvY29tbWl0Lz9pZD0yODI2ZDQ0N2ZiZDYwZTZhMDVlNTNkNWY5MThiY2ViOGMwNGUzMTVj
DQoNCkkgZG9uJ3QgdGhpbmsgd2UgY2FuIHRha2UgdGhlIGxvY2sgd2l0aGluDQppOTE1X2dlbV9v
YmplY3RfcHV0X3BhZ2VzX2RtYWJ1ZigpLCBpdCBtYXkvc2hvdWxkIGRlYWRsb2NrIG90aGVyIGNv
ZGUgcGF0aHMuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
