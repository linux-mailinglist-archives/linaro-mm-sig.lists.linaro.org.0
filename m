Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F274D4EB581
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 00:02:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A1BD3EC1B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 22:02:43 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by lists.linaro.org (Postfix) with ESMTPS id 936323EBFD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 22:02:39 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id c15so25244549ljr.9
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 15:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=GFh+hu29pLGd1yFJqG3TD5ib8w39W4JQGiYky9bmdEA=;
        b=Uul80CmlA5J9+LprVKWbEBNT+SmpX7fuHJuj2ZcNq5lQoGbXiK7l08X9mWZUnyQ9xj
         JGG6phzP2JIgAVM7Ck+/uPDofSFZS9DiEe+vTdfqlpktGqi5ac7BkNwpDuVFGoxB1j/L
         kiTUpYuWVv1NpO5CD/u3+wXPH+VkKXOxXU0EKfbfEIs9OIrNH5DeSfkqq0ywl+G16oUs
         EjjTffPfQWSLwPTUxIsp9apeOAkSzbzkNz+6u6mon973oumaMEcdCiHqApsz0Veblhsd
         qGyeBpLbqSDPrXgY78vgDjWeIZHmYGtPl54GxQn+x5B1VeLWM6M7Ui77iW8/TQ/Q1xEu
         yH0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=GFh+hu29pLGd1yFJqG3TD5ib8w39W4JQGiYky9bmdEA=;
        b=vm2Rrt3h+JhwlfwAikaLqs1mpaP3p17yiAG0GT6hFOCS421zrmi4DSjhGlDmivzIz+
         FE3sYK8BHINptHo+/EkskvhfNpQd5YqSmZiqkeZ+qJ13UKE53ZYNLdTFDuuPQBFFHUCr
         aiqpFZGlZuaZTcjajMu4s+WI4F4+DmEY8o9zvP3o7qadlmKLquUGlHm5RIAmkJuhTFF2
         nikneyfjd2ydGMsgBwPI7qMgBwxvwhclo7t+ruYQXbJi7xRCLsnqenmT925MOrByznt+
         iimLP9eBJeT6B2LtIEgtsv47VwT428AeB4LxKTVPDTQbfOVJSOoKzAad1Ay7g5WC/lfT
         wV5w==
X-Gm-Message-State: AOAM532zbIR9KkweTF4XByWJx6defdZqyDT+m2FoduDliHeRWhqTqhiC
	l35ZlqqKYKs6K2XSsBB7j4o=
X-Google-Smtp-Source: ABdhPJwoHVOneGk1MKkV++hihnKGasRhaKJqXGRhP23iN10zifJJPhye88xL0pFF5DtY6cv59xPRXg==
X-Received: by 2002:a2e:b7c1:0:b0:249:7a91:bba1 with SMTP id p1-20020a2eb7c1000000b002497a91bba1mr4503477ljo.276.1648591358215;
        Tue, 29 Mar 2022 15:02:38 -0700 (PDT)
Received: from [192.168.1.11] ([94.103.225.225])
        by smtp.gmail.com with ESMTPSA id i2-20020a196d02000000b004488dae6d45sm2114104lfc.52.2022.03.29.15.02.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Mar 2022 15:02:37 -0700 (PDT)
Content-Type: multipart/mixed; boundary="------------787Zf0iirh0AwihTJK1ygKXK"
Message-ID: <419a9bb8-cb68-8add-e7be-275a48b2126d@gmail.com>
Date: Wed, 30 Mar 2022 01:02:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: syzbot <syzbot+5c943fe38e86d615cac2@syzkaller.appspotmail.com>,
 christian.koenig@amd.com, daniel.vetter@ffwll.ch,
 dri-devel@lists.freedesktop.org, gustavo@padovan.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, sumit.semwal@linaro.org,
 syzkaller-bugs@googlegroups.com
References: <0000000000008eedfe05db620952@google.com>
From: Pavel Skripkin <paskripkin@gmail.com>
In-Reply-To: <0000000000008eedfe05db620952@google.com>
Message-ID-Hash: HQBHVJSUG3WO3DWPNCN34OGHTXTL33ZS
X-Message-ID-Hash: HQBHVJSUG3WO3DWPNCN34OGHTXTL33ZS
X-MailFrom: paskripkin@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] general protection fault in dma_fence_array_first
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HQBHVJSUG3WO3DWPNCN34OGHTXTL33ZS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>

This is a multi-part message in MIME format.
--------------787Zf0iirh0AwihTJK1ygKXK
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMy8zMC8yMiAwMDoyMywgc3l6Ym90IHdyb3RlOg0KPiBIZWxsbywNCj4gDQo+IHN5emJvdCBm
b3VuZCB0aGUgZm9sbG93aW5nIGlzc3VlIG9uOg0KPiANCj4gSEVBRCBjb21taXQ6ICAgIDg1MTVk
MDViZjZiYyBBZGQgbGludXgtbmV4dCBzcGVjaWZpYyBmaWxlcyBmb3IgMjAyMjAzMjgNCj4gZ2l0
IHRyZWU6ICAgICAgIGxpbnV4LW5leHQNCj4gY29uc29sZSBvdXRwdXQ6IGh0dHBzOi8vc3l6a2Fs
bGVyLmFwcHNwb3QuY29tL3gvbG9nLnR4dD94PTE2OTRlMjFiNzAwMDAwDQo+IGtlcm5lbCBjb25m
aWc6ICBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94Ly5jb25maWc/eD01MzBjNjhiZWY0
ZTJiOGE4DQo+IGRhc2hib2FyZCBsaW5rOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9i
dWc/ZXh0aWQ9NWM5NDNmZTM4ZTg2ZDYxNWNhYzINCj4gY29tcGlsZXI6ICAgICAgIGdjYyAoRGVi
aWFuIDEwLjIuMS02KSAxMC4yLjEgMjAyMTAxMTAsIEdOVSBsZCAoR05VIEJpbnV0aWxzIGZvciBE
ZWJpYW4pIDIuMzUuMg0KPiBzeXogcmVwcm86ICAgICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3Bv
dC5jb20veC9yZXByby5zeXo/eD0xNDY3MzEzYjcwMDAwMA0KPiBDIHJlcHJvZHVjZXI6ICAgaHR0
cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXByby5jP3g9MTIxYjdjYjk3MDAwMDANCj4g
DQo+IFRoZSBpc3N1ZSB3YXMgYmlzZWN0ZWQgdG86DQo+IA0KPiBjb21taXQgNTE5ZjQ5MGRiMDdl
MWE1Mzk0OTA2MTJmMzc2NDg3ZjYxZTQ4ZTM5Yw0KPiBBdXRob3I6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gRGF0ZTogICBGcmkgTWFyIDExIDA5OjMyOjI2
IDIwMjIgKzAwMDANCj4gDQo+ICAgICAgZG1hLWJ1Zi9zeW5jLWZpbGU6IGZpeCB3YXJuaW5nIGFi
b3V0IGZlbmNlIGNvbnRhaW5lcnMNCj4gDQoNClRoZXJlIGlzIFpFUk9fUFRSIGRlcmVmZXJlbmNl
IGNhdXNlZCBieSBwYXNzaW5nIDAgdG8ga3JlYWxsb2NfYXJyYXkoKS4gDQpDb2RlIHNob3VsZCBu
b3QgdHJ5IHRvIHJlZHVjZSBhbGxvY2F0ZWQgbWVtb3J5IGFyZWEgaWYgaW5kZXggaXMgZXF1YWwg
dG8gMA0KDQojc3l6IHRlc3Q6DQpnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvbmV4dC9saW51eC1uZXh0LmdpdCBtYXN0ZXINCg0KDQoNCg0KV2l0aCByZWdhcmRz
LA0KUGF2ZWwgU2tyaXBraW4=

--------------787Zf0iirh0AwihTJK1ygKXK
Content-Type: text/plain; charset=UTF-8; name="ph"
Content-Disposition: attachment; filename="ph"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9zeW5jX2ZpbGUuYwppbmRleCBiOGRlYTRlYzEyM2IuLjYwY2I0MjY2ZTc3ZiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jCisrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9zeW5jX2ZpbGUuYwpAQCAtMjY0LDcgKzI2NCw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc3lu
Y19maWxlICpzeW5jX2ZpbGVfbWVyZ2UoY29uc3QgY2hhciAqbmFtZSwgc3RydWN0IHN5bmNf
ZmlsZSAqYSwKIAlpZiAoaW5kZXggPT0gMCkKIAkJYWRkX2ZlbmNlKGZlbmNlcywgJmluZGV4
LCBkbWFfZmVuY2VfZ2V0X3N0dWIoKSk7CiAKLQlpZiAobnVtX2ZlbmNlcyA+IGluZGV4KSB7
CisJaWYgKGluZGV4ICYmIG51bV9mZW5jZXMgPiBpbmRleCkgewogCQlzdHJ1Y3QgZG1hX2Zl
bmNlICoqdG1wOwogCiAJCS8qIEtlZXAgZ29pbmcgZXZlbiB3aGVuIHJlZHVjaW5nIHRoZSBz
aXplIGZhaWxlZCAqLwo=

--------------787Zf0iirh0AwihTJK1ygKXK
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--------------787Zf0iirh0AwihTJK1ygKXK--
