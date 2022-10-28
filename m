Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEF2610C5E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 10:40:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 755B83F5A7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 08:40:46 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by lists.linaro.org (Postfix) with ESMTPS id 68F3E3F4D7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 08:40:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=ZF5xafTG;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.49 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id f27so11369752eje.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 01:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kFzvTU+1nAE3iwfdvDEuobErZlYN2b9+VxFUpewI2uQ=;
        b=ZF5xafTGQXY3dLRXGpUPQI58MFME9iFSrvhSSQANv2XlgJpSgRF8gGJvmGdzF0iDQa
         dD0ZnJ9IPxYHzCa7ui41/jBPzXrbqG4rIqXk4Hyna3QGAmz+hiVEfHBYVyDnJ6Bid20z
         pAALcjxGflPtP693L872fGTki0bOJgtN3+q0JR9ks0Xqqh5+FIx0aEkCGpPCJcxQv0vt
         4GLctE81YpPgUflNXFzwudsR+cJNZMSrIlsyhbsCX2wGfkvebhVP1zLNnjkNogwNIJ6R
         xGAdwTcI8wV1rqhMqZeov+EXTZdJuojD7Odhz+7nsLUKKiugXctm6y4jHe5925LJwH87
         WRYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kFzvTU+1nAE3iwfdvDEuobErZlYN2b9+VxFUpewI2uQ=;
        b=TwGXIgkG8j30ila8r9LApRzo7L7FD+fMwQQK5Bw28M6FvmPmOXUISo+yJCqEzZCsLo
         EoOQsFgHmWWZ+0ysiiyXMTlVtSlTcK9M5x+PM2D5och2drslpMJg3LcvOzYd2DU3lWNg
         DcHyi0pv8UDPrfuaNR38qq5uXwXBwskttdur03QcTRZOQcJE4DLBBfN+bYGaILV9FaGo
         eYEiCr2w6ZPZeG7ylldKMKkpmMjav184wz7Zcfg6wIwkot7FOzCLrk0W/H5BMIwkgdY5
         U9CKHf88HqG8DTPaPwA2rJIeEke5MIBkVGSqsrkhrHVn9no5LcGKQB+kAqTkwAD3NLnU
         aJkA==
X-Gm-Message-State: ACrzQf3OfPhHZm2uTE7jRM8kza5mjzPa3V/EKil7vtvPIWQHgQIilh6I
	sqKrr8K8//1uGPasSDRDhfE=
X-Google-Smtp-Source: AMsMyM58O/hVUnWovCLxC8TlPiHUIxF/NjE4ZXFsqqVwdPxIzfrQ2gFfAzK8PIcaOqAhVAtD4u9N0g==
X-Received: by 2002:a17:907:703:b0:78e:25be:5455 with SMTP id xb3-20020a170907070300b0078e25be5455mr45087232ejb.630.1666946428267;
        Fri, 28 Oct 2022 01:40:28 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:9377:d2f2:2ed:af4b? ([2a02:908:1256:79a0:9377:d2f2:2ed:af4b])
        by smtp.gmail.com with ESMTPSA id lb14-20020a170907784e00b0078d22b0bcf2sm1791388ejc.168.2022.10.28.01.40.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 01:40:27 -0700 (PDT)
Message-ID: <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com>
Date: Fri, 28 Oct 2022 10:40:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Lucas Stach <l.stach@pengutronix.de>, nicolas@ndufresne.ca,
 ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch,
 robdclark@gmail.com, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ----------
X-Rspamd-Queue-Id: 68F3E3F4D7
X-Spamd-Result: default: False [-10.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.00)[2a02:908:1256:79a0:9377:d2f2:2ed:af4b:received,209.85.218.49:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.49:from];
	MIME_GOOD(-0.10)[text/plain];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.919];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_TO(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: KPGJWCI7MKUP2RRRXA6ZULATM3F7AKPR
X-Message-ID-Hash: KPGJWCI7MKUP2RRRXA6ZULATM3F7AKPR
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KPGJWCI7MKUP2RRRXA6ZULATM3F7AKPR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgTHVjYXMsDQoNCkFtIDI4LjEwLjIyIHVtIDEwOjA5IHNjaHJpZWIgTHVjYXMgU3RhY2g6DQo+
IEhpIENocmlzdGlhbiwNCj4NCj4gQW0gRG9ubmVyc3RhZywgZGVtIDIwLjEwLjIwMjIgdW0gMTQ6
MTMgKzAyMDAgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPj4gSGkgZ3V5cywNCj4+DQo+PiBh
ZnRlciBmaW5kaW5nIHRoYXQgd2UgZXNzZW50aWFsbHkgaGF2ZSB0d28gc2VwYXJhdGUgd29ybGRz
IGZvciBjb2hlcmVudCBzaGFyaW5nDQo+PiBvZiBidWZmZXIgdGhyb3VnaCBETUEtYnVmIEkgdGhv
dWdodCBJIHdpbGwgdGFja2xlIHRoYXQgcHJvYmxlbSBhIGJpdCBhbmQgYXQNCj4+IGxlYXN0IGFs
bG93IHRoZSBmcmFtZXdvcmsgdG8gcmVqZWN0IGF0dGFjaG1lbnRzIHdoaWNoIHdvbid0IHdvcmsu
DQo+Pg0KPj4gU28gdGhvc2UgcGF0Y2hlcyBoZXJlIGFkZCBhIG5ldyBkbWFfY29oZXJlbnQgZmxh
ZyB0byBlYWNoIERNQS1idWYgb2JqZWN0DQo+PiB0ZWxsaW5nIHRoZSBmcmFtZXdvcmsgdGhhdCBk
ZXZfaXNfZG1hX2NvaGVyZW50KCkgbmVlZHMgdG8gcmV0dXJuIHRydWUgZm9yIGFuDQo+PiBpbXBv
cnRpbmcgZGV2aWNlIHRvIGJlIGFibGUgdG8gYXR0YWNoLiBTaW5jZSB3ZSBzaG91bGQgYWx3YXlz
IGhhdmUgYSBmYWxsYmFjaw0KPj4gcGF0aCB0aGlzIHNob3VsZCBnaXZlIHVzZXJzcGFjZSB0aGUg
Y2hhbmNlIHRvIHN0aWxsIGtlZXAgdGhlIHVzZSBjYXNlIHdvcmtpbmcsDQo+PiBlaXRoZXIgYnkg
ZG9pbmcgYSBDUFUgY29weSBpbnN0ZWFkIG9yIHJldmVyc2luZyB0aGUgcm9sZXMgb2YgZXhwb3J0
ZXIgYW5kDQo+PiBpbXBvcnRlci4NCj4+DQo+IFRoZSBmYWxsYmFjayB3b3VsZCBsaWtlbHkgYmUg
YSBDUFUgY29weSB3aXRoIHRoZSBhcHByb3ByaWF0ZSBjYWNoZQ0KPiBmbHVzaGVzIGRvbmUgYnkg
dGhlIGRldmljZSBkcml2ZXIsIHdoaWNoIHdvdWxkIGJlIGEgbWFzc2l2IHBlcmZvcm1hbmNlDQo+
IGlzc3VlLg0KDQpCdXQgZXNzZW50aWFsbHkgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvLiBUaGUgb25s
eSBhbHRlcm5hdGl2ZSBJIGNhbiBzZWUgaXMgDQp0byByZXZlcnNlIHRoZSByb2xlIG9mIGV4cG9y
dGVyIGFuZCBpbXBvcnRlci4NCg0KPj4gRm9yIERSTSBhbmQgbW9zdCBWNEwyIGRldmljZXMgSSB0
aGVuIGZpbGwgaW4gdGhlIGRtYV9jb2hlcmVudCBmbGFnIGJhc2VkIG9uIHRoZQ0KPj4gcmV0dXJu
IHZhbHVlIG9mIGRldl9pc19kbWFfY29oZXJlbnQoKS4gRXhwb3J0aW5nIGRyaXZlcnMgYXJlIGFs
bG93ZWQgdG8gY2xlYXINCj4+IHRoZSBmbGFnIGZvciB0aGVpciBidWZmZXJzIGlmIHNwZWNpYWwg
aGFuZGxpbmcgbGlrZSB0aGUgVVNXQyBmbGFnIGluIGFtZGdwdSBvcg0KPj4gdGhlIHVuY2FjaGVk
IGFsbG9jYXRpb25zIGZvciByYWRlb24vbm91dmVhdSBhcmUgaW4gdXNlLg0KPj4NCj4gSSBkb24n
dCB0aGluayB0aGUgVjRMMiBwYXJ0IHdvcmtzIGZvciBtb3N0IEFSTSBzeXN0ZW1zLiBUaGUgZGVm
YXVsdA0KPiB0aGVyZSBpcyBmb3IgZGV2aWNlcyB0byBiZSBub25jb2hlcmVudCB1bmxlc3MgZXhw
bGljaXRseSBtYXJrZWQNCj4gb3RoZXJ3aXNlLiBJIGRvbid0IHRoaW5rIGFueSBvZiB0aGUgImRl
dmljZXMiIHdyaXRpbmcgdGhlIHZpZGVvIGJ1ZmZlcnMNCj4gaW4gY2FjaGVkIG1lbW9yeSB3aXRo
IHRoZSBDUFUgZG8gdGhpcy4gV2hpbGUgd2UgY291bGQgcHJvYmFibHkgbWFyaw0KPiB0aGVtIGFz
IGNvaGVyZW50LCBJIGRvbid0IHRoaW5rIHRoaXMgaXMgbW92aW5nIGluIHRoZSByaWdodCBkaXJl
Y3Rpb24uDQoNCldlbGwgd2h5IG5vdD8gVGhvc2UgZGV2aWNlcyBhcmUgY29oZXJlbnQgaW4gdGhl
IHNlbnNlIG9mIHRoZSBETUEgQVBJIA0KdGhhdCB0aGV5IGRvbid0IG5lZWQgYW4gZXh0cmEgQ1BV
IGNvcHkgb24gc3luY190b19jcHUvc3luY190b19kZXZpY2UuDQoNCldlIGNvdWxkIGNvbWUgdXAg
d2l0aCBhIGJldHRlciBuYW1lIGZvciBjb2hlcmVuY3ksIGUuZy4gc25vb3BpbmcgZm9yIA0KZXhh
bXBsZS4gQnV0IHRoYXQgaXMganVzdCBhbiBkb2N1bWVudGF0aW9uIGRldGFpbC4NCg0KPj4gQWRk
aXRpb25hbCB0byB0aGF0IGltcG9ydGVycyBjYW4gYWxzbyBjaGVjayB0aGUgZmxhZyBpZiB0aGV5
IGhhdmUgc29tZQ0KPj4gbm9uLXNub29waW5nIG9wZXJhdGlvbnMgbGlrZSB0aGUgc3BlY2lhbCBz
Y2Fub3V0IGNhc2UgZm9yIGFtZGdwdSBmb3IgZXhhbXBsZS4NCj4+DQo+PiBUaGUgcGF0Y2hlcyBh
cmUgb25seSBzbW9rZSB0ZXN0ZWQgYW5kIHRoZSBzb2x1dGlvbiBpc24ndCBpZGVhbCwgYnV0IGFz
IGZhciBhcw0KPj4gSSBjYW4gc2VlIHNob3VsZCBhdCBsZWFzdCBrZWVwIHRoaW5ncyB3b3JraW5n
Lg0KPj4NCj4gSSB3b3VsZCBsaWtlIHRvIHNlZSB0aGlzIHNvbHZlZCBwcm9wZXJseS4gV2hlcmUg
SSB0aGluayBwcm9wZXJseSBtZWFucw0KPiB3ZSBtYWtlIHRoaW5ncyB3b3JrIG9uIHN5c3RlbXMg
d2l0aCBtaXhlZCBjb2hlcmVudC9ub25jb2hlcmVudCBtYXN0ZXJzDQo+IGluIHRoZSBzYW1lIHdh
eSB0aGUgRE1BIEFQSSBkb2VzIG9uIHN1Y2ggc3lzdGVtczogYnkgaW5zZXJ0aW5nIHRoZQ0KPiBw
cm9wZXIgY2FjaGUgbWFpbnRlbmFuY2Ugb3BlcmF0aW9ucy4NCg0KQW5kIHRoaXMgdGhlIGV4YWN0
IHdyb25nIGFwcHJvYWNoIGFzIGZhciBhcyBJIGNhbiBzZWUuIEFzIERhbmllbCBub3RlZCANCmFz
IHdlbGwgd2UgYWJzb2x1dGVseSBuZWVkIHNvbWUga2luZCBvZiBjb2hlcmVuY3kgYmV0d2VlbiBl
eHBvcnRlciBhbmQgDQppbXBvcnRlci4NCg0KVGhpcyBjYW4gZWl0aGVyIGJlIHByb3ZpZGVkIGJ5
IHRoZSBQQ0kgc3BlY2lmaWNhdGlvbiB3aGljaCBtYWtlcyBpdCANCm1hbmRhdG9yeSBmb3IgZGV2
aWNlIHRvIHNub29wIHRoZSBjYWNoZXMgb3IgYnkgcGxhdGZvcm0gZGV2aWNlcyBhZ3JlZWluZyAN
CnRoYXQgdGhleSBvbmx5IHdvcmsgb24gdW5jYWNoZWQgbWVtb3J5Lg0KDQpFeHBsaWNpdCBjYWNo
ZSBmbHVzaCBvcGVyYXRpb25zIGFyZSBzaW1wbGUgbm90IHBhcnQgb2YgdGhlIGRlc2lnbiBvZiAN
CkRNQS1idWYgYmVjYXVzZSB0aGV5IGFyZSBub3QgcGFydCBvZiB0aGUgZGVzaWduIG9mIHRoZSBo
aWdoZXIgbGV2ZWwgQVBJcyANCmxpa2UgVnVsa2FuIGFuZCBPcGVuR0wuDQoNCkFkZGluZyB0aGlz
IHRvIERNQS1idWYgZm9yIHRoZSByYXRoZXIgc3BlY2lhbCB1c2UgY2FzZSB3b3VsZCBjb21wbGV0
ZWx5IA0KYnJlYWsgdGhhdCBhbmQgbWFrZSBsaXZlIG11Y2ggbW9yZSBjb21wbGljYXRlZCBmb3Ig
ZXZlcnlib2R5Lg0KDQo+IEkgYWxzbyB0aGluayB0aGF0IHdlIHNob3VsZCBrZWVwIGluIG1pbmQg
dGhhdCB0aGUgd29ybGQgaXMgbW92aW5nIGludG8NCj4gYSBkaXJlY3Rpb24gd2hlcmUgRE1BIG1h
c3RlcnMgbWF5IG5vdCBvbmx5IHNub29wIHRoZSBDUFUgY2FjaGVzICh3aGF0DQo+IGlzIHRoZSBk
ZWZpbml0aW9uIG9mIGNhY2hlIGNvaGVyZW50IG9uIHg4NiksIGJ1dCBhY3R1YWxseSB0YWtlIHBh
cnQgaW4NCj4gdGhlIHN5c3RlbSBjb2hlcmVuY2UgYW5kIGFyZSBhYmxlIHRvIGhhdmUgd3JpdGVi
YWNrIGNhY2hlcyBmb3Igc2hhcmVkDQo+IGRhdGEgb24gdGhlaXIgb3duLiBJIGNhbiBvbmx5IHNw
ZWN1bGF0ZSwgYXMgSSBoYXZlbid0IHNlZW4gdGhlIGFtZGdwdQ0KPiBzaWRlIHlldCwgYnV0IEkg
dGhpbmsgdGhpcyBwcm9wb3NhbCBpcyBtb3ZpbmcgaW4gdGhlIG90aGVyIGRpcmVjdGlvbiBieQ0K
PiBhc3N1bWluZyBhIGNlbnRyYWwgc3lzdGVtIGNhY2hlLCB3aGVyZSB0aGUgaW1wb3J0ZXIgaGFz
IHNvbWUgbWFnaWMgd2F5DQo+IHRvIGNsZWFuIHRoaXMgY2VudHJhbCBjYWNoZS4NCg0KV2hhdCB5
b3UgbWVhbiBpcyBDWEw6IGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0NvbXB1dGVfRXhw
cmVzc19MaW5rDQoNCkFuZCB5ZXMgd2Ugc3VwcG9ydCB0aGF0IGluIGEgYnVuY2ggb2YgY29uZmln
dXJhdGlvbnMgYW5kIGFsc28gaGF2ZSANCndvcmtlZCB3aXRoIHRoYXQgYW5kIGFtZGdwdSB3aXRo
IERNQS1idWYgYmFzZWQgc2hhcmVkLg0KDQpUaGlzIHNob3VsZCBub3QgYmUgYSBwcm9ibGVtIHdp
dGggdGhpcyBhcHByb2FjaC4NCg0KPiBTaW5jZSBJIGhhdmUgYSB2ZXN0ZWQgaW50ZXJlc3QgaW4g
c2VlaW5nIFY0TDIgVVZDIGFuZCBub24tY29oZXJlbnQgR1BVDQo+IGRtYS1idWYgc2hhcmluZyB3
b3JrIG9uIEFSTSBzeXN0ZW1zIGFuZCBzZWVtIHRvIGhvbGQgc29tZSBzdHJvbmcNCj4gb3Bpbmlv
bnMgb24gaG93IHRoaXMgc2hvdWxkIHdvcmssIEkgZ3Vlc3MgSSBuZWVkIHRvIG1ha2Ugc29tZSB0
aW1lDQo+IGF2YWlsYWJsZSB0byB0eXBlIGl0IHVwLCBzbyB3ZSBjYW4gZGlzY3VzcyBvdmVyIGNv
ZGVyIHJhdGhlciB0aGFuDQo+IGFic3RyYWN0IGlkZWFzLiBJZiBJIGNvbWUgdXAgd2l0aCBzb21l
dGhpbmcgdGhhdCB3b3JrcyBmb3IgbXkgdXNlLWNhc2VzDQo+IHdvdWxkIHlvdSBiZSB1cCBmb3Ig
dGFraW5nIGEgc2hvdCBhdCBhIGFtZGdwdSBpbXBsZW1lbnRhdGlvbj8NCg0KV2VsbCwgbm90IHJl
YWxseS4gQXMgSSBzYWlkIEkgc2VlIHdoYXQgeW91IGhhdmUgaW4gbWluZCBoZXJlIGFzIA0KY29t
cGxldGVseSB3cm9uZyBhcHByb2FjaCB3ZSB3aWxsIGNlcnRhaW5seSBub3Qgc3VwcG9ydCBpbiBh
bnkgR1BVIGRyaXZlci4NCg0KV2hhdCB3ZSBjYW4gZG8gaXMgdG8gcmVxdWVzdCB0aGUgdXNlIGNh
c2Ugd2hpY2ggd29uJ3Qgd29yayBhbmQgdGhpcyBpcyANCmV4YWN0bHkgd2hhdCB0aGUgcGF0Y2gg
aGVyZSBkb2VzLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IFJlZ2FyZHMsDQo+IEx1
Y2FzDQo+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
