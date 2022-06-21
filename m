Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A07F4553805
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jun 2022 18:39:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C92373F0CB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jun 2022 16:39:34 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by lists.linaro.org (Postfix) with ESMTPS id CAA503F0CB
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jun 2022 16:39:29 +0000 (UTC)
Received: by mail-lj1-f170.google.com with SMTP id k20so9720649ljg.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jun 2022 09:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=mhIiUkoVFz0wPW9tQouAUPqb2d9trqlO1mA9uf8w0Ks=;
        b=FIjnHKZ++BZwbnW/IETfzzE9HdfruXLMCZ2afU8f8Ol9x8E7l51cySVPm4KWm5juQG
         gvX77m5NrkZGy6opdeOW3LRwfEVZD3UiZOrJaMZQjx5mhQWDWWBzAgbL+4P6dmqW4Ybr
         pnJWoWI7QHQJSteAPaPBGKo0nX8KMOGEJJStZWmxp4DZK/wrdSA5PXIfblpzcGzawRa1
         MeB9sdH+if74n2gTXbLRxglLSaNkv5FQLHhjr8l1loJCZtcGUyvXakvtZV7uSTRiacct
         DlG37LBGraBOSPqB4o8FlEBG3UbFB1lHDbrO6892U8ZlIb6y/14e/lKA5JIfPI67jtMv
         Uu5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mhIiUkoVFz0wPW9tQouAUPqb2d9trqlO1mA9uf8w0Ks=;
        b=6nX74hXW2qjokxmrVFG1IO5WRVLvgFsy5kBMR2eH9eV6r4lF2y4wMBnSgdFyP3KIpG
         XfVJZsRYXcHvUSkWt9sput/Qlm321vKXqTCChmInoEHO47zF8HOXPdBqTNUeNW4EmvP+
         kicIwaagfyb4hOZhKAhNpw70Xs0fKNtRs1IMRMMPTOckWUecc+SatUTwelEcStT2yuBt
         +zzRnZRHtBbJobC9XNIuw+t2uvibYjHOYgXkHWfDhglQ0pZOCH3wCkS4phM5gkGMiYN4
         fsrrMUfR9umYrpJcyYJJLOx6d7ZfqAidZncBYCG2oESW5HK+rHPi3Sf1pK8ZaZCAqPe/
         hVBg==
X-Gm-Message-State: AJIora8o7tsoNkFuWNpnt6VGbb1luc8Gu5NZx+vXSsvrVXIcHjbekk7n
	7ycGb8DHMbLyD8XusayQv+0=
X-Google-Smtp-Source: AGRyM1tTeVIJS0PV6ghwi5oLN82VfE9B8lRb5DRIlTC+FNYEK1w9sU215ZQ3z+wF7iT6GuEnyQM6mw==
X-Received: by 2002:a05:651c:160a:b0:25a:62a4:9085 with SMTP id f10-20020a05651c160a00b0025a62a49085mr8422999ljq.214.1655829568510;
        Tue, 21 Jun 2022 09:39:28 -0700 (PDT)
Received: from [192.168.2.145] (109-252-136-92.dynamic.spd-mgts.ru. [109.252.136.92])
        by smtp.googlemail.com with ESMTPSA id y19-20020a2e3213000000b0025a69521bbdsm1106096ljy.121.2022.06.21.09.39.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 09:39:27 -0700 (PDT)
Message-ID: <c1d7b5f0-32e0-df37-e447-c525e3a84253@gmail.com>
Date: Tue, 21 Jun 2022 19:39:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-18-dmitry.osipenko@collabora.com>
 <CAF6AEGt=EqeF+3UaYjxQCCFEabRFJwLbiWN9brGveYoHTYyZ7w@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
In-Reply-To: <CAF6AEGt=EqeF+3UaYjxQCCFEabRFJwLbiWN9brGveYoHTYyZ7w@mail.gmail.com>
Message-ID-Hash: 7NBPSI7KY4V77ZG4OW5VYF5DP6HSEQVD
X-Message-ID-Hash: 7NBPSI7KY4V77ZG4OW5VYF5DP6HSEQVD
X-MailFrom: digetx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, Emil Velikov <emil.l.velikov@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Qiang Yu <yuq825@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deuche
 r <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 17/22] drm/shmem-helper: Add generic memory shrinker
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7NBPSI7KY4V77ZG4OW5VYF5DP6HSEQVD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

MjAuMDYuMjAyMiAxODozNywgUm9iIENsYXJrINC/0LjRiNC10YI6DQo+PiArc3RhdGljIHVuc2ln
bmVkIGxvbmcNCj4+ICtkcm1fZ2VtX3NobWVtX3Nocmlua2VyX3NjYW5fb2JqZWN0cyhzdHJ1Y3Qg
c2hyaW5rZXIgKnNocmlua2VyLA0KPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc3RydWN0IHNocmlua19jb250cm9sICpzYykNCj4+ICt7DQo+PiArICAgICAgIHVuc2lnbmVk
IGxvbmcgbnJfdG9fc2NhbiA9IHNjLT5ucl90b19zY2FuOw0KPj4gKyAgICAgICBib29sIGxvY2tf
Y29udGVudGlvbiA9IGZhbHNlOw0KPj4gKyAgICAgICB1bnNpZ25lZCBsb25nIGZyZWVkOw0KPj4g
Kw0KPj4gKyAgICAgICAvKiBwdXJnZSBhcyBtYW55IG9iamVjdHMgYXMgd2UgY2FuICovDQo+PiAr
ICAgICAgIGZyZWVkID0gZHJtX2dlbV9zaG1lbV9zaHJpbmtlcl9ydW5fb2JqZWN0c19zY2FuKHNo
cmlua2VyLCBucl90b19zY2FuLA0KPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAmbG9ja19jb250ZW50aW9uLCBmYWxzZSk7DQo+PiArDQo+
PiArICAgICAgIC8qIGV2aWN0IGFzIG1hbnkgb2JqZWN0cyBhcyB3ZSBjYW4gKi8NCj4+ICsgICAg
ICAgaWYgKGZyZWVkIDwgbnJfdG9fc2NhbikNCj4gb2gsIG9uZSBvdGhlciBzbWFsbCBub3RlLCBi
b3RoIGluIHNjYW5fb2JqZWN0cygpIGFuZCBjb3VudF9vYmplY3RzKCksDQo+IHlvdSBzaG91bGQg
Y2hlY2sgdGhhdCBnZXRfbnJfc3dhcF9wYWdlcygpPjAgYmVmb3JlIGNvdW50aW5nDQo+IGV2aWN0
YWJsZS93aWxsbmVlZCBvYmplY3RzLiAgKEFuZCB5b3UgcHJvYmFibHkgd2FudCB0byBrZWVwIHNl
cGFyYXRlDQo+IExSVXMgZm9yIGRvbnRuZWVkIHZzIHdpbGxuZWVkIHRvIGFjY29tcGxpc2ggdGhh
dC4pICBBdCBsZWFzdCBmb3IgQ3JPUywNCj4gaW5zaWRlIHRoZSBWTSB0aGVyZSBpcyBubyBzd2Fw
IGVuYWJsZWQgKGJ1dCBpbnN0ZWFkIHdlIHJlbHkgb24genJhbQ0KPiBzd2FwIGluIHRoZSBob3N0
Li4gcGx1cyB2bS1iYWxsb29uIHRvIGJhbGFuY2UgbWVtb3J5IHByZXNzdXJlIGJldHdlZW4NCj4g
aG9zdCBhbmQgZ3Vlc3QpDQoNCk5vdGVkLCB0aGFuayB5b3UhDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
