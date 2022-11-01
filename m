Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9906150EF
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Nov 2022 18:41:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FBAA3F535
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Nov 2022 17:41:03 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id 8CFBC3EF7A
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Nov 2022 17:40:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=VSpeUNPM;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.50 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id kt23so38842523ejc.7
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Nov 2022 10:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GRs+ErkNwu4zE9UIJ4s2EeakhzaWS2TcSmL7yJSwxFc=;
        b=VSpeUNPMwm3uAArVCjAcui+lJyFl6hadnoCUhyqNgUN9Ji6EBoDPXseYg6l4vKSXV3
         pkz99kcDgyS3jOy+YT1gpeEMBB3XgrgC9VoGK/9dRoPC6hSLdPL0xjfcCf470CrL1LpI
         CRv1jRJA3nCvVrpS2mCXYQW0LAvubvTutDG2PPG0s2weJCHPb9IdzZJHL/gVT05QtwbD
         afbWJJlXGbO0f+lJVdz2/df95ftsjbIZIy1/TjyZMeHrWVyI2OmpTO47C2bSQno5uTNa
         ttLuncjnAFgSSgcaa6dSiq0N7y7va/D1RxG7dbe1p6VeJpGS1YGgh5xb4Q6x3wOtvCBn
         2JOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GRs+ErkNwu4zE9UIJ4s2EeakhzaWS2TcSmL7yJSwxFc=;
        b=tzV6ph17xRhx/e3tl9D+OI7LqAFl8+ZbybXf4NLEv4vYxXeW0gvKmBmdYh8cLaeYqY
         1zHKOna+FoOvxMVb4dNk7RRhxw0HC4k3ivl+qu8K35olOj+rUoLL4NMNpBhJH0pCYgBc
         OpIDSfM6i9tfCfD+c2OPye3nVBYt7HoCHXoP4gRaN9Y7Q6EvJMiJUgnAZz9I1V6wbCFQ
         gHi8WVueUQfccK1AliFT6X3G00YJkQm+yTBJhGmLMFdAkrk5iOXWt1ltlKG6VGhx+7bI
         Wm0KH+hsvBbGcowvbsPnR1lsAF0YSWAlG0i3YSmfjmpNJckTtuPuFdp8KNVFa9Zklcdr
         vxog==
X-Gm-Message-State: ACrzQf1sFKowR6n5EjZfp7Vn+sZSsT/m3GcSY2VZbZrHaUbKqdPyGw/0
	dVJulUfnpPqxJMB2Ag5nUS8=
X-Google-Smtp-Source: AMsMyM6B8uK2k8LsEcHxqIFmGBayhCJT2QQki/6Qg+LayxjGcTeQmy2/EHqWdgFF5ydGFUuuOQougA==
X-Received: by 2002:a17:907:3fa6:b0:7ad:8bd5:b7ea with SMTP id hr38-20020a1709073fa600b007ad8bd5b7eamr19120118ejc.130.1667324445382;
        Tue, 01 Nov 2022 10:40:45 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:49b3:944:a1d4:4523? ([2a02:908:1256:79a0:49b3:944:a1d4:4523])
        by smtp.gmail.com with ESMTPSA id w9-20020a170906384900b007ab1b4cab9bsm4440737ejc.224.2022.11.01.10.40.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Nov 2022 10:40:44 -0700 (PDT)
Message-ID: <11a6f97c-e45f-f24b-8a73-48d5a388a2cc@gmail.com>
Date: Tue, 1 Nov 2022 18:40:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Daniel Stone <daniel@fooishbar.org>
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
 <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com>
 <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
 <e02cedc2-6741-8813-a7a5-f8769e301745@gmail.com>
 <a53e5df51ec0f2f9d4c2d377c0cc5ba85f2e58ff.camel@ndufresne.ca>
 <9d716641-55c6-1590-26c2-1c3b14a28226@gmail.com>
 <CAPj87rMPkmimR_RJHhxYZokH__TVpPArk0h6drOUSx7Z9+oAHA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <CAPj87rMPkmimR_RJHhxYZokH__TVpPArk0h6drOUSx7Z9+oAHA@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ----
X-Rspamd-Queue-Id: 8CFBC3EF7A
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.50:from];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.985];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[ndufresne.ca,pengutronix.de,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org]
Message-ID-Hash: 22XTGIB7FUUXLLFDAS4A2CPLUKPUY2LY
X-Message-ID-Hash: 22XTGIB7FUUXLLFDAS4A2CPLUKPUY2LY
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/22XTGIB7FUUXLLFDAS4A2CPLUKPUY2LY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjguMTAuMjIgdW0gMjA6NDcgc2NocmllYiBEYW5pZWwgU3RvbmU6DQo+IEhpIENocmlzdGlh
biwNCj4NCj4gT24gRnJpLCAyOCBPY3QgMjAyMiBhdCAxODo1MCwgQ2hyaXN0aWFuIEvDtm5pZw0K
PiA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPj4gQW0gMjguMTAu
MjIgdW0gMTc6NDYgc2NocmllYiBOaWNvbGFzIER1ZnJlc25lOg0KPj4+IFRob3VnaCwgaXRzIG5v
dCBnZW5lcmljYWxseSBwb3NzaWJsZSB0byByZXZlcnNlIHRoZXNlIHJvbGVzLiBJZiB5b3Ugd2Fu
dCB0byBkbw0KPj4+IHNvLCB5b3UgZW5kdXAgaGF2aW5nIHRvIGRvIGxpa2UgQW5kcm9pZCAoZ3Jh
bGxvYykgYW5kIENocm9tZU9TIChtaW5pZ2JtKSwNCj4+PiBiZWNhdXNlIHlvdSB3aWxsIGhhdmUg
dG8gYWxsb2NhdGUgRFJNIGJ1ZmZlcnMgdGhhdCBrbm93cyBhYm91dCBpbXBvcnRlciBzcGVjaWZp
Yw0KPj4+IHJlcXVpcmVtZW50cy4gU2VlIGxpbmsgWzFdIGZvciB3aGF0IGl0IGxvb2tzIGxpa2Ug
Zm9yIFJLMzM5OSwgd2l0aCBNb3Rpb24gVmVjdG9yDQo+Pj4gc2l6ZSBjYWxjdWxhdGlvbiBjb3Bp
ZWQgZnJvbSB0aGUga2VybmVsIGRyaXZlciBpbnRvIGEgdXNlcnNwYWNlIGxpYiAoYXJndWFibHkN
Cj4+PiB0aGF0IHdhcyBhdmFpbGFibGUgZnJvbSBWNEwyIHNpemVpbWFnZSwgYnV0IHRoaXMgaXMg
dGVjaG5pY2FsbHkgZGlmZmljdWx0IHRvDQo+Pj4gY29tbXVuaWNhdGUgd2l0aGluIHRoZSBzb2Z0
d2FyZSBsYXllcnMpLiBJZiB5b3UgY291bGQgbGV0IHRoZSBkZWNvZGVyIGV4cG9ydA0KPj4+ICh3
aXRoIHByb3BlciBjYWNoZSBtYW5hZ2VtZW50KSB0aGUgbm9uLWdlbmVyaWMgY29kZSB3b3VsZCBu
b3QgYmUgbmVlZGVkLg0KPj4gWWVhaCwgYnV0IEkgY2FuIGFsc28gcmV2ZXJzZSB0aGUgYXJndW1l
bnQ6DQo+Pg0KPj4gR2V0dGluZyB0aGUgcGFyYW1ldGVycyBmb3IgVjRMIHJpZ2h0IHNvIHRoYXQg
d2UgY2FuIHNoYXJlIHRoZSBpbWFnZSBpcw0KPj4gdHJpY2t5LCBidXQgZ2V0dGluZyB0aGUgcGFy
YW1ldGVycyBzbyB0aGF0IHRoZSBzdHVmZiBpcyBhY3R1YWxseQ0KPj4gZGlyZWN0bHkgZGlzcGxh
eWFibGUgYnkgR1BVcyBpcyBldmVuIHRyaWNraWVyLg0KPj4NCj4+IEVzc2VudGlhbGx5IHlvdSBu
ZWVkIHRvIGxvb2sgYXQgYm90aCBzaWRlcyBhbmQgaW50ZXJmZXJlbmNlIHRvIGdldCB0byBhDQo+
PiBjb21tb24gZ3JvdW5kLCBlLmcuIGFsaWdubWVudCwgcGl0Y2gsIHdpZHRoL2hlaWdodCwgcGFk
ZGluZywgZXRjLi4uLi4NCj4+DQo+PiBEZWNpZGluZyBmcm9tIHdoaWNoIHNpZGUgdG8gYWxsb2Nh
dGUgZnJvbSBpcyBqdXN0IG9uZSBzdGVwIGluIHRoaXMNCj4+IHByb2Nlc3MuIEZvciBleGFtcGxl
IG1vc3QgZEdQVXMgY2FuJ3QgZGlzcGxheSBkaXJlY3RseSBmcm9tIHN5c3RlbQ0KPj4gbWVtb3J5
IGFsdG9nZXRoZXIsIGJ1dCBpdCBpcyBwb3NzaWJsZSB0byBhbGxvY2F0ZSB0aGUgRE1BLWJ1ZiB0
aHJvdWdoDQo+PiB0aGUgR1BVIGRyaXZlciBhbmQgdGhlbiB3cml0ZSBpbnRvIGRldmljZSBtZW1v
cnkgd2l0aCBQMlAgUENJIHRyYW5zZmVycy4NCj4+DQo+PiBTbyBhcyBmYXIgYXMgSSBjYW4gc2Vl
IHN3aXRjaGluZyBpbXBvcnRlciBhbmQgZXhwb3J0ZXIgcm9sZXMgYW5kIGV2ZW4NCj4+IGhhdmlu
ZyBwZXJmb3JtYW50IGV4dHJhIGZhbGxiYWNrcyBzaG91bGQgYmUgYSBzdGFuZGFyZCBmZWF0dXJl
IG9mIHVzZXJzcGFjZS4NCj4+DQo+Pj4gQW5vdGhlciBjYXNlIHdoZXJlIHJldmVyc2luZyB0aGUg
cm9sZSBpcyBkaWZmaWN1bHQgaXMgZm9yIGNhc2Ugd2hlcmUgeW91IG5lZWQgdG8NCj4+PiBtdWx0
aXBsZXggdGhlIHN0cmVhbXMgKGxldCdzIHVzZSBhIGNhbWVyYSB0byBpbGx1c3RyYXRlKSBhbmQg
c2hhcmUgdGhhdCB3aXRoDQo+Pj4gbXVsdGlwbGUgcHJvY2Vzc2VzLiBJbiB0aGVzZSB1c2VzIGNh
c2UsIHRoZSBEUk0gaW1wb3J0ZXJzIGFyZSB2b2xhdGlsZSwgd2hpY2gNCj4+PiBvbmUgZG8geW91
IGFidXNlIHRvIGRvIGFsbG9jYXRpb24gZnJvbSA/IEluIG11bHRpbWVkaWEgc2VydmVyIGxpa2Ug
UGlwZVdpcmUsIHlvdQ0KPj4+IGFyZSBub3QgcmVhbGx5IGF3YXJlIGlmIHRoZSBjYW1lcmEgd2ls
bCBiZSB1c2VkIGJ5IERSTSBvciBub3QsIGFuZCBpZiBzb21ldGhpbmcNCj4+PiAic3BlY2lhbCIg
aXMgbmVlZGVkIGluIHRlcm0gb2Ygcm9sZSBpbnZlcnNpb24uIEl0IGlzIHJlbGF0aXZlbHkgZWFz
eSB0byBkZWFsDQo+Pj4gd2l0aCBtYXRjaGluZyBtb2RpZmllcnMsIGJ1dCB1c2luZyBkb3duc3Ry
ZWFtIChkaXNwbGF5L2dwdSkgYXMgYW4gZXhwb3J0ZXIgaXMNCj4+PiBhbHdheXMgZGlmZmljdWx0
IChhbmQgcmVxdWlyZSBzb21lIGxldmVsIG9mIGFidXNlIGFuZCBndWVzc2luZykuDQo+PiBPaCwg
dmVyeSBnb29kIHBvaW50ISBZZWFoIHdlIGRvIGhhdmUgdXNlIGNhc2VzIGZvciB0aGlzIHdoZXJl
IGFuIGlucHV0DQo+PiBidWZmZXIgaXMgYm90aCBkaXNwbGF5ZWQgYXMgd2VsbCBhcyBlbmNvZGVk
Lg0KPiBUaGlzIGlzIHRoZSBtYWluIGlzc3VlLCB5ZWFoLg0KPg0KPiBGb3IgYSBzdGFuZGFyZCBt
ZWRpYSBwbGF5ZXIsIHRoZXkgd291bGQgdHJ5IHRvIGFsbG9jYXRlIHRocm91Z2ggVjRMMg0KPiBh
bmQgZGVjb2RlIHRocm91Z2ggdGhhdCBpbnRvIGxvY2FsbHktYWxsb2NhdGVkIGJ1ZmZlcnMuIEFs
bCB0aGV5IGtub3cNCj4gaXMgdGhhdCB0aGVyZSdzIGEgV2F5bGFuZCBzZXJ2ZXIgYXQgdGhlIG90
aGVyIGVuZCBvZiBhIHNvY2tldA0KPiBzb21ld2hlcmUgd2hpY2ggd2lsbCB3YW50IHRvIGltcG9y
dCB0aGUgRkQuIFRoZSBzZXJ2ZXIgZG9lcyBnaXZlIHlvdQ0KPiBzb21lIGhpbnRzIGFsb25nIHRo
ZSB3YXk6IGl0IHdpbGwgdGVsbCB5b3UgdGhhdCBpbXBvcnRpbmcgaW50byBhDQo+IHBhcnRpY3Vs
YXIgR1BVIHRhcmdldCBkZXZpY2UgaXMgbmVjZXNzYXJ5IGFzIHRoZSB1bHRpbWF0ZSBmYWxsYmFj
aywNCj4gYW5kIGltcG9ydGluZyBpbnRvIGEgcGFydGljdWxhciBLTVMgZGV2aWNlIGlzIHByZWZl
cmFibGUgYXMgdGhlDQo+IG9wdGltYWwgcGF0aCB0byBoaXQgYW4gb3ZlcmxheS4NCj4NCj4gU28g
bGV0J3Mgc2F5IHRoYXQgdGhlIFY0TDIgY2xpZW50IGRvZXMgd2hhdCB5b3UncmUgcHJvcG9zaW5n
OiBpdA0KPiBhbGxvY2F0ZXMgYSBidWZmZXIgY2hhaW4sIHNjaGVkdWxlcyBhIGRlY29kZSBpbnRv
IHRoYXQgYnVmZmVyLCBhbmQNCj4gcGFzc2VzIGl0IGFsb25nIHRvIHRoZSBzZXJ2ZXIgdG8gaW1w
b3J0LiBUaGUgc2VydmVyIGZhaWxzIHRvIGltcG9ydA0KPiB0aGUgYnVmZmVyIGludG8gdGhlIEdQ
VSwgYW5kIHRlbGxzIHRoZSBjbGllbnQgdGhpcy4gVGhlIGNsaWVudCB0aGVuDQo+IC4uLiB3ZWxs
LCBpdCBkb2Vzbid0IGtub3cgdGhhdCBpdCBuZWVkcyB0byBhbGxvY2F0ZSB3aXRoaW4gdGhlIEdQ
VQ0KPiBpbnN0ZWFkLCBidXQgaXQga25vd3MgdGhhdCBkb2luZyBzbyBtaWdodCBiZSBvbmUgdGhp
bmcgd2hpY2ggd291bGQNCj4gbWFrZSB0aGUgcmVxdWVzdCBzdWNjZWVkLg0KPg0KPiBCdXQgdGhl
IGNsaWVudCBpcyBqdXN0IGEgdmlkZW8gcGxheWVyLiBJdCBkb2Vzbid0IHVuZGVyc3RhbmQgaG93
IHRvDQo+IGFsbG9jYXRlIEJPcyBmb3IgUGFuZnJvc3Qgb3IgQU1EIG9yIGV0bmF2aXYuIFNvIHdp
dGhvdXQgYSB1bml2ZXJzYWwNCj4gYWxsb2NhdG9yIChhZ2FpbiAuLi4pLCAnanVzdCBhbGxvY2F0
ZSBvbiB0aGUgR1BVJyBpc24ndCBhIHVzZWZ1bA0KPiByZXNwb25zZSB0byB0aGUgY2xpZW50Lg0K
DQpXZWxsIGV4YWN0bHkgdGhhdCdzIHRoZSBwb2ludCBJJ20gcmFpc2luZzogVGhlIGNsaWVudCAq
bXVzdCogdW5kZXJzdGFuZCANCnRoYXQhDQoNClNlZSB3ZSBuZWVkIHRvIGJlIGFibGUgdG8gaGFu
ZGxlIGFsbCByZXN0cmljdGlvbnMgaGVyZSwgY29oZXJlbmN5IG9mIHRoZSANCmRhdGEgaXMganVz
dCBvbmUgb2YgdGhlbS4NCg0KRm9yIGV4YW1wbGUgdGhlIG11Y2ggbW9yZSBpbXBvcnRhbnQgcXVl
c3Rpb24gaXMgdGhlIGxvY2F0aW9uIG9mIHRoZSBkYXRhIA0KYW5kIGZvciB0aGlzIGFsbG9jYXRp
bmcgZnJvbSB0aGUgVjRMMiBkZXZpY2UgaXMgaW4gbW9zdCBjYXNlcyBqdXN0IG5vdCANCmdvaW5n
IHRvIGZseS4NCg0KVGhlIG1vcmUgY29tbW9uIGNhc2UgaXMgdGhhdCB5b3UgbmVlZCB0byBhbGxv
Y2F0ZSBmcm9tIHRoZSBHUFUgYW5kIHRoZW4gDQppbXBvcnQgdGhhdCBpbnRvIHRoZSBWNEwyIGRl
dmljZS4gVGhlIGJhY2tncm91bmQgaXMgdGhhdCBhbGwgZEdQVXMgSSANCmtub3cgb2YgbmVlZCB0
aGUgZGF0YSBpbnNpZGUgbG9jYWwgbWVtb3J5IChWUkFNKSB0byBiZSBhYmxlIHRvIHNjYW4gb3V0
IA0KZnJvbSBpdC4NCg0KPiBJIGZ1bGx5IHVuZGVyc3RhbmQgeW91ciBwb2ludCBhYm91dCBBUElz
IGxpa2UgVnVsa2FuIG5vdCBzZW5zaWJseQ0KPiBhbGxvd2luZyBicmFja2V0aW5nLCBhbmQgdGhh
dCdzIGZpbmUuIE9uIHRoZSBvdGhlciBoYW5kLCBhIGxvdCBvZg0KPiBleHRhbnQgdXNlY2FzZXMg
KGNhbWVyYS9jb2RlYyAtPiBHUFUvZGlzcGxheSwgR1BVIC0+IGNvZGVjLCBldGMpIG9uDQo+IEFy
bSBqdXN0IGNhbm5vdCBmdWxmaWxsIGNvbXBsZXRlIGNvaGVyZW5jeS4gT24gYSBsb3Qgb2YgdGhl
c2UNCj4gcGxhdGZvcm1zLCBkZXNwaXRlIHdoYXQgeW91IG1pZ2h0IHRoaW5rIGFib3V0IHRoZSBD
UFUvR1BVDQo+IGNhcGFiaWxpdGllcywgdGhlIGJvdHRsZW5lY2sgaXMgX2Fsd2F5c18gbWVtb3J5
IGJhbmR3aWR0aCwgc28NCj4gbWFuZGF0aW5nIGV4dHJhIGNvcGllcyBpcyBhbiBhYnNvbHV0ZSBu
b24tc3RhcnRlciwgYW5kIHdvdWxkIGluc3RhbnRseQ0KPiBjcmlwcGxlIGJpbGxpb25zIG9mIGRl
dmljZXMuIEx1Y2FzIGhhcyBiZWVuIHByZXR0eSBnZW50bGUsIGJ1dCB0byBiZQ0KPiBtb3JlIGNs
ZWFyLCB0aGlzIGlzIG5vdCBhbiBvcHRpb24gYW5kIHdvbid0IGJlIGZvciBhdCBsZWFzdCB0aGUg
bmV4dA0KPiBkZWNhZGUuDQoNCldlbGwgeDg2IHByZXR0eSBtdWNoIGhhcyB0aGUgc2FtZSByZXN0
cmljdGlvbnMuDQoNCkZvciBleGFtcGxlIHRoZSBzY2Fub3V0IGJ1ZmZlciBpcyB1c3VhbGx5IGFs
d2F5cyBpbiBsb2NhbCBtZW1vcnkgYmVjYXVzZSANCnlvdSBvZnRlbiBzY2FuIG91dCBhdCB1cCB0
byAxMjBIeiB3aGlsZSB5b3VyIHJlY29yZGluZyBpcyBvbmx5IDMwZnBzIGFuZCANCm1vc3Qgb2Yg
dGhlIHRpbWUgbG93ZXIgcmVzb2x1dGlvbi4NCg0KUHVtcGluZyBhbGwgdGhhdCBkYXRhIDEyMCB0
aW1lIGEgc2Vjb25kIG92ZXIgdGhlIFBDSWUgYnVzIHdvdWxkIGp1c3Qgbm90IA0KYmUgZG9hYmxl
IGluIGEgbG90IG9mIHVzZSBjYXNlcy4NCg0KPiBTbyB3ZSBvYnZpb3VzbHkgbmVlZCBhIHRoaXJk
IHdheSBhdCB0aGlzIHBvaW50LCBiZWNhdXNlICdhbGwgZGV2aWNlcw0KPiBtdXN0IGFsd2F5cyBi
ZSBjb2hlcmVudCcgdnMuICdjYWNoZSBtdXN0IGJlIGFuIHVua25vd24nIGNhbid0IHdvcmsuDQo+
IEhvdyBhYm91dCB0aGlzIGFzIGEgc3VnZ2VzdGlvbjogd2UgaGF2ZSBzb21lIHVudXNlZCBmbGFn
cyBpbiB0aGUgUFJJTUUNCj4gaW9jdGxzLiBDYW4gd2UgYWRkIGEgZmxhZyBmb3IgJ2ltcG9ydCBt
dXN0IGJlIGNvaGVyZW50Jz8NCg0KVGhhdCdzIHByZXR0eSBtdWNoIGV4YWN0bHkgd2hhdCBteSBw
YXRjaCBzZXQgZG9lcy4gSXQganVzdCBrZWVwcyANCnVzZXJzcGFjZSBvdXQgb2YgdGhlIHdheSBh
bmQgc2F5cyB0aGF0IGNyZWF0aW5nIHRoZSBpbml0aWFsIGNvbm5lY3Rpb24gDQpiZXR3ZWVuIHRo
ZSBkZXZpY2VzIGZhaWxzIGlmIHRoZXkgY2FuJ3QgdGFsayBkaXJlY3RseSB3aXRoIGVhY2ggb3Ro
ZXIuDQoNCk1heWJlIHdlIHNob3VsZCBtb3ZlIHRoYXQgaW50byB1c2Vyc3BhY2Ugc28gdGhhdCB0
aGUgaW52b2x2ZWQgY29tcG9uZW50cyANCmtub3cgb2YgaGFuZCB0aGF0IGEgY2VydGFpbiBhcHBy
b2FjaCB3b24ndCB3b3JrPw0KDQo+IFRoYXQgZmxhZyB3b3VsZG4ndCBiZSBzZXQgZm9yIHRoZSBl
eGlzdGluZyBlY29zeXN0ZW0NCj4gTHVjYXMvTmljb2xhcy9teXNlbGYgYXJlIHRhbGtpbmcgYWJv
dXQsIHdoZXJlIHdlIGhhdmUgZXhwbGljaXQNCj4gaGFuZG92ZXIgcG9pbnRzIGFuZCB1c2VycyBh
cmUgZnVsbHkgYWJsZSB0byBwZXJmb3JtIGNhY2hlIG1haW50ZW5hbmNlLg0KPiBGb3IgbmV3ZXIg
QVBJcyB3aGVyZSBpdCdzIG5vdCBwb3NzaWJsZSB0byBwcm9wZXJseSBleHByZXNzIHRoYXQNCj4g
YnJhY2tldGluZywgdGhleSB3b3VsZCBhbHdheXMgc2V0IHRoYXQgZmxhZyAodW5sZXNzIHdlIGFk
ZCBhbiBBUEkNCj4gY2FydmUtb3V0IHdoZXJlIHRoZSBjbGllbnQgcHJvbWlzZXMgdG8gZG8gd2hh
dGV2ZXIgaXMgcmVxdWlyZWQgdG8NCj4gbWFpbnRhaW4gdGhhdCkuDQo+DQo+IFdvdWxkIHRoYXQg
YmUgdmlhYmxlPw0KDQpObywgYXMgSSBzYWlkLiBFeHBsaWNpdCBoYW5kb3ZlciBwb2ludHMgYXJl
IGp1c3QgYW4gYWJzb2x1dGVseSBuby1nby4gV2UgDQpqdXN0IGhhdmUgd2F5IHRvIG1hbnkgdXNl
IGNhc2VzIHdoaWNoIGRvbid0IHdvcmsgd2l0aCB0aGF0IGlkZWEuDQoNCkFzIEkgc2FpZCB3ZSBt
YWRlIHRoZSBzYW1lIG1pc3Rha2Ugd2l0aCB0aGUgRE1BLUFwaSBhbmQgZXZlbiBtb3JlIDIwIA0K
eWVhcnMgbGF0ZXIgYXJlIHN0aWxsIHJ1bm5pbmcgaW50byBwcm9ibGVtcyBiZWNhdXNlIG9mIHRo
YXQuDQoNCkp1c3QgdHJ5IHRvIHJ1biBhbnkgZEdQVSB1bmRlciBhIFhFTiBoeXBlcnZpc29yIHdp
dGggbWVtb3J5IA0KZnJhZ21lbnRhdGlvbiBmb3IgYSB2ZXJ5IGdvb2QgZXhhbXBsZSB3aHkgdGhp
cyBpcyBzdWNoIGEgYmFkIGlkZWEuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gQ2hl
ZXJzLA0KPiBEYW5pZWwNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
