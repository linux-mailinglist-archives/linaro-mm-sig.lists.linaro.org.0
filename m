Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8C554FCB2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Jun 2022 20:05:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E4A83F1D3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Jun 2022 18:05:44 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id E1A3A3EC1D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Jun 2022 18:05:40 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id s12so10186750ejx.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Jun 2022 11:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=DlzhBdhQZGkSqbILc5kEVzWlytICniT9hnMKvWlVqZw=;
        b=ILV3mz7sBacg0aN7ocCkv6eYBMa1pbhWugkAoneGtRKHC5/Sv28MmVE6yTZBeDrSts
         PR3+XJkQqDMdN+EIkPbQ8myNfFBOCPTlfs4xMp4YGgZvkxxsYn1f4TElmRvu91xegeNu
         NvqZ9goh9byggYb3MusWjevLijNjH5VdkK7FUmjPeQzzUGCIToYYXoHiVQUjxiMQwrk8
         y2LE1k6CxPVIKp8qnOumQDOeoXDu/7P6dPjgyYAI2TfpUkJt6Sheays7mfqMANQBFBI9
         THe0c9rWj7vV27yy3mOga5l9q6o5iNak0m751YWVBrmbT8G50fMlTF0xRKPCkuhVnRX0
         NO+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=DlzhBdhQZGkSqbILc5kEVzWlytICniT9hnMKvWlVqZw=;
        b=ZfdNYjZz0JeGoQ2oYl+ZUZhgA+gXPPRYzNj7alw6fnQFWq/aRB1+4Qose3tOehigHH
         AzBO97pjlshHvu1TcGYSDmrbuRGsj8gyVYo0LWGdwrmOR3FqMrhvlFC8O1vpch4MIoOw
         6dHtarXRGH39QoOSfm4qBE4++fkdLCzsMUqHlLiRP513iymZtBssGWIvGSmS7EGUZTK9
         MzrEXqqe6d7y69Uphzsjhl/bGYQcWwucIMHCH3OtfkPWzGNiTaSHszP9eR6ujgZ766yM
         S8dOvjUCnzy03+2tN2ExAuOjEC5ubIXaL0tNeosgI7f+tst1BvpTuNvJGufL3sZT0abn
         Iyeg==
X-Gm-Message-State: AJIora+Az3dlRv/fypf2eDbD9JfoZLfGpToUlBYnqcIX8s6ta3yw0t1q
	b4wo6dcou6pUZuTTzhIKszuSafmWJ4MankoeVyv69g==
X-Google-Smtp-Source: AGRyM1uMVrWnbWWCMTzRjwcW88cM+PF9rzfVvGectq3GOC3WJhDjyr+WhdxrfzqVtXJWcFu2xIGTUMW1CRYABq+7akE=
X-Received: by 2002:a17:907:d25:b0:711:ea61:63aa with SMTP id
 gn37-20020a1709070d2500b00711ea6163aamr10295837ejc.584.1655489139667; Fri, 17
 Jun 2022 11:05:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220617085702.4298-1-christian.koenig@amd.com>
In-Reply-To: <20220617085702.4298-1-christian.koenig@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 17 Jun 2022 11:05:28 -0700
Message-ID: <CABdmKX2yD_UPUVvZEX3+Bi55eTW2=NDAxWLay1fRjGu4W0W1EA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID-Hash: FUPT43FTM2YDIZFPWIOIRXGEGMIOND5D
X-Message-ID-Hash: FUPT43FTM2YDIZFPWIOIRXGEGMIOND5D
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, kernel-team@android.com, Greg Kroah-Hartman <gregkh@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: deprecate DMABUF_SYSFS_STATS
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FUPT43FTM2YDIZFPWIOIRXGEGMIOND5D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKdW4gMTcsIDIwMjIgYXQgMTo1NyBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2tvZW5p
Zy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBBZGQgYSB3YXJuaW5nIHRo
YXQgdGhpcyBVQVBJIHdhc24ndCBzdWNoIGEgZ29vZCBpZGVhIGFuZCBzaG91bGRuJ3QgYmUNCj4g
dXNlZCBieSBhbnlib2R5Lg0KPg0KPiBUaGF0IHNob3VsZCBnaXZlIHVzIGEgYmV0dGVyIGNoYW5j
ZSB0byByZW1vdmUgaXQgYXQgc29tZSBwb2ludCBhbmQNCj4gcHJldmVudHMgb3RoZXJzIGZyb20g
cnVubmluZyBpbnRvIHRoZSBzYW1lIGlzc3Vlcy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
ZG1hLWJ1Zi9LY29uZmlnIHwgNiArKysrKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9L
Y29uZmlnIGIvZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCj4gaW5kZXggNTQxZWZlMDFhYmM3Li5l
NGRjNTNhMzY0MjggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnDQo+ICsr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnDQo+IEBAIC03NSw3ICs3NSw3IEBAIG1lbnVjb25m
aWcgRE1BQlVGX0hFQVBTDQo+ICAgICAgICAgICBiZXR3ZWVuIGRyaXZlcnMuDQo+DQo+ICBtZW51
Y29uZmlnIERNQUJVRl9TWVNGU19TVEFUUw0KPiAtICAgICAgIGJvb2wgIkRNQS1CVUYgc3lzZnMg
c3RhdGlzdGljcyINCj4gKyAgICAgICBib29sICJETUEtQlVGIHN5c2ZzIHN0YXRpc3RpY3MgKERF
UFJFQ0FURUQpIg0KPiAgICAgICAgIGRlcGVuZHMgb24gRE1BX1NIQVJFRF9CVUZGRVINCj4gICAg
ICAgICBoZWxwDQo+ICAgICAgICAgICAgQ2hvb3NlIHRoaXMgb3B0aW9uIHRvIGVuYWJsZSBETUEt
QlVGIHN5c2ZzIHN0YXRpc3RpY3MNCj4gQEAgLTg1LDYgKzg1LDEwIEBAIG1lbnVjb25maWcgRE1B
QlVGX1NZU0ZTX1NUQVRTDQo+ICAgICAgICAgICAgc3RhdGlzdGljcyBmb3IgdGhlIERNQS1CVUYg
d2l0aCB0aGUgdW5pcXVlIGlub2RlIG51bWJlcg0KPiAgICAgICAgICAgIDxpbm9kZV9udW1iZXI+
Lg0KPg0KPiArICAgICAgICAgIFRoaXMgb3B0aW9uIGlzIGRlcHJlY2F0ZWQgYW5kIHNob3VsZCBz
b29uZXIgb3IgbGF0ZXIgYmUgcmVtb3ZlZC4NCj4gKyAgICAgICAgICBBbmRyb2lkIGlzIHRoZSBv
bmx5IHVzZXIgb2YgdGhpcyBhbmQgaXQgdHVybmVkIG91dCB0aGF0IHRoaXMgcmVzdWx0ZWQNCj4g
KyAgICAgICAgICBpbiBxdWl0ZSBzb21lIHBlcmZvcm1hbmNlIHByb2JsZW1zLg0KPiArDQo+ICBz
b3VyY2UgImRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnIg0KPg0KPiAgZW5kbWVudQ0KPiAt
LQ0KPiAyLjI1LjENCj4NClJldmlld2VkLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29n
bGUuY29tPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
