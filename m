Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E24181B4F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 15:33:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2EF4D65FCC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 14:33:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 215BE65FD5; Wed, 11 Mar 2020 14:33:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6CF476195D;
	Wed, 11 Mar 2020 14:33:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A34F46184D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 14:33:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9759760C09; Wed, 11 Mar 2020 14:33:05 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 9682F60C09
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 14:33:04 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id m9so2879761wro.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 07:33:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=CQ0JDxNrcN3shv6a5m0suWWdeJt0vyxFrdr4rHmqkqU=;
 b=Qa69WOEjr59OBAwXmfFNJrodJzn+UM3cwW1snx9uW+ufh9/fkg/vn+ukmn2HBCf+Rc
 SC3PxaToteO3+p4z6FRwJNgOq+zUZ8coyb1suzNkiTZbGIyLymflYWm1UkPi4lBckSc0
 DUqFm99NFPnBg2ZdLPx2Q2Z3l4ZynMutl3Kw84faKIPk5eMXrZ8i1rC699JjBoabrAXi
 IVwaIAWv52Us3Q0AsLSbo0YIh+EX240knH95+h3rOi/MCj3Gmc8sYosInvRl9vmhSTjT
 UP16YS5MIBTh4AeScs8APuamQTTA3o7i0KB3T7A+rlQ12l6CqZnAyvS4lT2tBeF72rZM
 86wg==
X-Gm-Message-State: ANhLgQ07ScorsRYEo/Ru4//lCoMqglmlTxNllNbVk5e9oh3v+BK0Mi1S
 ihCkEcBnfUDOntKJZpqLSRQ=
X-Google-Smtp-Source: ADFU+vupajy8DiEtdmUz0h9BP/XwMnaErjf8sHC5057XwoWGaDuCWiInFXD/bVB1J78ZSPNA/rAVZw==
X-Received: by 2002:a5d:4d48:: with SMTP id a8mr4915400wru.246.1583937183716; 
 Wed, 11 Mar 2020 07:33:03 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id c13sm10921011wro.96.2020.03.11.07.33.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Mar 2020 07:33:02 -0700 (PDT)
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20200311135158.3310-1-christian.koenig@amd.com>
 <20200311135158.3310-5-christian.koenig@amd.com>
 <20200311140415.GB31668@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <848c2f50-1529-f036-69cd-5104b7ebe27b@gmail.com>
Date: Wed, 11 Mar 2020 15:33:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200311140415.GB31668@ziepe.ca>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David1.Zhou@amd.com, Logan Gunthorpe <logang@deltatee.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 hch@infradead.org, daniel@ffwll.ch, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 4/6] drm/amdgpu: add checks if DMA-buf
	P2P is supported
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTEuMDMuMjAgdW0gMTU6MDQgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4gT24gV2VkLCBN
YXIgMTEsIDIwMjAgYXQgMDI6NTE6NTZQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToK
Pj4gQ2hlY2sgaWYgd2UgY2FuIGRvIHBlZXIycGVlciBvbiB0aGUgUENJZSBidXMuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4K
Pj4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIHwgNCArKysr
Cj4+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyBiL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMKPj4gaW5kZXggYWVmMTJlZTJmMWUzLi5i
YmY2NzgwMGM4YTYgMTAwNjQ0Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kbWFfYnVmLmMKPj4gQEAgLTM4LDYgKzM4LDcgQEAKPj4gICAjaW5jbHVkZSA8ZHJtL2Ft
ZGdwdV9kcm0uaD4KPj4gICAjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPgo+PiAgICNpbmNsdWRl
IDxsaW51eC9kbWEtZmVuY2UtYXJyYXkuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9wY2ktcDJwZG1h
Lmg+Cj4+ICAgCj4+ICAgLyoqCj4+ICAgICogYW1kZ3B1X2dlbV9wcmltZV92bWFwIC0gJmRtYV9i
dWZfb3BzLnZtYXAgaW1wbGVtZW50YXRpb24KPj4gQEAgLTE3OSw2ICsxODAsOSBAQCBzdGF0aWMg
aW50IGFtZGdwdV9kbWFfYnVmX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAo+PiAgIAlz
dHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiA9IGFtZGdwdV90dG1fYWRldihiby0+dGJvLmJkZXYp
Owo+PiAgIAlpbnQgcjsKPj4gICAKPj4gKwlpZiAocGNpX3AycGRtYV9kaXN0YW5jZV9tYW55KGFk
ZXYtPnBkZXYsICZhdHRhY2gtPmRldiwgMSwgdHJ1ZSkgPCAwKQo+PiArCQlhdHRhY2gtPnBlZXIy
cGVlciA9IGZhbHNlOwo+PiArCj4gQXJlIHRoZXJlIG90aGVyIHJlbGF0ZWQgcGF0Y2hlcyB0aGFu
IHRoaXMgc2VyaWVzPwo+Cj4gcDJwIGRtYSBtYXBwaW5nIG5lZWRzIHRvIGJlIGRvbmUgaW4gY29t
bW9uIGNvZGUsIGluIHAycGRtYS5jIC0gaWUgdGhpcwo+IG9wZW4gY29kaW5nIGlzIG1pc3Npbmcg
dGhlIGJ1c19vZmZzZXQgc3R1ZmYsIGF0IGxlYXN0LgoKWWVhaCwgSSdtIGF3YXJlIG9mIHRoaXMu
IEJ1dCBJIGNvdWxkbid0IGZpbmQgYSBiZXR0ZXIgd2F5IGZvciBub3cuCgo+IEkgcmVhbGx5IGRv
IG5vdCB3YW50IHRvIHNlZSBkcml2ZXJzIG9wZW4gY29kZSB0aGlzIHN0dWZmLgo+Cj4gV2UgYWxy
ZWFkeSBoYXZlIGEgcDJwZG1hIEFQSSBmb3IgaGFuZGxpbmcgdGhlIHN0cnVjdCBwYWdlIGNhc2Us
IHNvIEkKPiBzdWdnZXN0IGFkZGluZyBzb21lIG5ldyBwMnBkbWEgQVBJIHRvIGhhbmRsZSB0aGlz
IGZvciBub24tc3RydWN0IHBhZ2UKPiBjYXNlcy4KPgo+IGllIHNvbWUgdGhpbmcgbGlrZToKPgo+
IGludCAncDJwZG1hIG1hcCBiYXInKAo+ICAgICBzdHJ1Y3QgcGNpX2RldmljZSAqc291cmNlLAo+
ICAgICB1bnNpZ25lZCBpbnQgc291cmNlX2Jhcl9udW1iZXIsCj4gICAgIHN0cnVjdCBwY2lfZGV2
aWNlICpkZXN0LAo+ICAgICBwaHlzYWRkciZsZW4gKmFycmF5X29mX29mZnNldHMgJiBsZW5ndGgg
cGFpcnMgaW50byBzb3VyY2UgYmFyLAo+ICAgICBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKm91dHB1dF9z
Z2wpCgpXZWxsIHRoYXQncyBleGFjdGx5IHdoYXQgSSBoYXZlIHRvIGF2b2lkIHNpbmNlIEkgZG9u
J3QgaGF2ZSB0aGUgYXJyYXkgb2YgCm9mZnNldHMgYXJvdW5kIGFuZCB3YW50IHRvIGF2b2lkIGNv
bnN0cnVjdGluZyBpdC4KClNpbWlsYXIgcHJvYmxlbSBmb3IgZG1hX21hcF9yZXNvdXJjZSgpLiBN
eSBleGFtcGxlIGRvZXMgdGhpcyBvbiBkZW1hbmQsIApidXQgZXNzZW50aWFsbHkgd2UgYWxzbyBo
YXZlIHVzZSBjYXNlcyB3aGVyZSB0aGlzIGlzIGRvbmUgb25seSBvbmNlLgoKSWRlYWxseSB3ZSB3
b3VsZCBoYXZlIHNvbWUgZnVuY3Rpb24gdG8gY3JlYXRlIGFuIHNnbCBiYXNlZCBvbiBzb21lIAph
cmJpdHJhcnkgY29sbGVjdGlvbiBvZiBvZmZzZXRzIGFuZCBsZW5ndGggaW5zaWRlIGEgQkFSLgoK
UmVnYXJkcywKQ2hyaXN0aWFuLgoKPgo+IEphc29uCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
