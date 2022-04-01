Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 480E350A198
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 16:08:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A17647FC4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 14:08:47 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id 6430E3EA18
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Apr 2022 18:41:50 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id c10so7544341ejs.13
        for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Apr 2022 11:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=DLtOWenxXCw5vQfabcGIJp+Je2gVQjc6VzKW0XdhyiQ=;
        b=h+rLLWbMQ/iHnS5/pj19fhLvsaEM9Wtdy1qxj2U1tvLPMxqJCjQosFe2F24w4FuEik
         zSrjnDN8RVUqsGTehE0RLFU9iAnAgsZLy6+HaVFpgiQgyaH0bi2nNoUnW/PN++7erDWp
         RX2laVeByhssITiwvlf5JqxR9o7iIybqO73rq6iDBg0II0FI27oeey/L41eoch8FqdX9
         HSLjysJJ9QsP1Keic9p/q3hcmxjndegS2Td9/sQ/qsgWCFS7CVf9el3ursRzkfzAihRs
         Haf70E3SoFpNKPytMrE2H1AsOY13tYTorkjDKu54Gzzinf56UPzglOwHHVZBMjHJCiR4
         t3yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=DLtOWenxXCw5vQfabcGIJp+Je2gVQjc6VzKW0XdhyiQ=;
        b=qiS1iWYQ4ke8ZR+6IMYR0GuF0x5PTt0a/vzmGmC1+w5si3lgDFMelzVe0fbRXL2GhP
         WC3r0QXh3vL1PXAjZOrs6u0DG+QmKSTq/CIBx6Wp9jdLJ748h47sKEJM660ZLygGnX3f
         LoDwmkt34xNQt05NSzqcABlQG+F1JXiPjFmKvevooRd6bBc8qBDrlfKQh4dbQk+QMOp4
         YCsMw5lhyzR+Dp8l9ZDHiD0xpmUGhxo2FkDz+sNAhFNP/vBegd9GFP4C8lAkoOsHDDy1
         dTWdva3tpPRJBSP2pyRMgqoWUc+3xPZ81BZ+rOcHczk2L35azk4rtM1SpeR0d1pXrVrg
         XJ0w==
X-Gm-Message-State: AOAM533sAIjBy4VXMJ/+U1hD7C2kjPotL/L52VTFxMen7W7zR3SK7OSL
	1s3KPpCSC/Z9BjytBznYlXj5120R69WhYz6pwQjS/A==
X-Google-Smtp-Source: ABdhPJwrYPj1kC3SIVIUHr/U2Akla60gayN+BoFrbJkPw1P4im/SamWlkUSDfJabqc8psCgCaTuKJc519X3Csg6+YUY=
X-Received: by 2002:a17:907:3eaa:b0:6df:b058:96a with SMTP id
 hs42-20020a1709073eaa00b006dfb058096amr1028056ejc.368.1648838508127; Fri, 01
 Apr 2022 11:41:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220328035951.1817417-1-tjmercier@google.com>
 <20220328035951.1817417-6-tjmercier@google.com> <20220329152142.GA15794@blackbody.suse.cz>
In-Reply-To: <20220329152142.GA15794@blackbody.suse.cz>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 1 Apr 2022 11:41:36 -0700
Message-ID: <CABdmKX2874NdYCBzpKLnqWhZQDkC2wKz4ZL_aFNqrec6iAutpQ@mail.gmail.com>
To: =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PUNAI62G6DKG63IPKPPY7RCYUWPTB7JO
X-Message-ID-Hash: PUNAI62G6DKG63IPKPPY7RCYUWPTB7JO
X-Mailman-Approved-At: Thu, 21 Apr 2022 14:08:42 +0000
CC: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Ka
 lesh Singh <kaleshsingh@google.com>, Kenny.Ho@amd.com, Shuah Khan <skhan@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v4 5/8] dmabuf: Add gpu cgroup charge transfer function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PUNAI62G6DKG63IPKPPY7RCYUWPTB7JO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXIgMjksIDIwMjIgYXQgODoyMSBBTSBNaWNoYWwgS291dG7DvSA8bWtvdXRueUBz
dXNlLmNvbT4gd3JvdGU6DQo+DQo+IEhpLg0KPg0KPiBPbiBNb24sIE1hciAyOCwgMjAyMiBhdCAw
Mzo1OTo0NEFNICswMDAwLCAiVC5KLiBNZXJjaWVyIiA8dGptZXJjaWVyQGdvb2dsZS5jb20+IHdy
b3RlOg0KPiA+IEZyb206IEhyaWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPg0KPiA+
DQo+ID4gVGhlIGRtYV9idWZfY2hhcmdlX3RyYW5zZmVyIGZ1bmN0aW9uIHByb3ZpZGVzIGEgd2F5
IGZvciBwcm9jZXNzZXMgdG8NCj4NCj4gKHMvZG1hX2J1Z19jaGFyZ2VfdHJhbnNmZXIvZG1hX2J1
Z190cmFuc2Zlcl9jaGFyZ2UvKQ0KPg0KRG9oISBUaGFua3MuDQoNCj4gPiB0cmFuc2ZlciBjaGFy
Z2Ugb2YgYSBidWZmZXIgdG8gYSBkaWZmZXJlbnQgcHJvY2Vzcy4gVGhpcyBpcyBlc3NlbnRpYWwN
Cj4gPiBmb3IgdGhlIGNhc2VzIHdoZXJlIGEgY2VudHJhbCBhbGxvY2F0b3IgcHJvY2VzcyBkb2Vz
IGFsbG9jYXRpb25zIGZvcg0KPiA+IHZhcmlvdXMgc3Vic3lzdGVtcywgaGFuZHMgb3ZlciB0aGUg
ZmQgdG8gdGhlIGNsaWVudCB3aG8gcmVxdWVzdGVkIHRoZQ0KPiA+IG1lbW9yeSBhbmQgZHJvcHMg
YWxsIHJlZmVyZW5jZXMgdG8gdGhlIGFsbG9jYXRlZCBtZW1vcnkuDQo+DQo+IEkgdW5kZXJzdG9v
ZCBmcm9tIFsxXSBzb21lIGJ1ZmZlcnMgYXJlIGJhY2tlZCBieSByZWd1bGFyIFJBTS4gSG93IGFy
ZQ0KPiB0aGVzZSBjaGFyZ2VzIGdvaW5nIHRvIGJlIHRyYW5zZmVycmVkIChpZiBzbyk/DQo+DQpU
aGlzIGxpbmsgZG9lc24ndCB3b3JrIGZvciBtZSwgYnV0IEkgdGhpbmsgeW91J3JlIHJlZmVycmlu
ZyB0byB0aGUNCmRpc2N1c3Npb24gYWJvdXQgeW91ciAiUkFNX2JhY2tlZF9idWZmZXJzIiBjb21t
ZW50IGZyb20gTWFyY2ggMjNyZC4gSQ0Kd2FudGVkIHRvIGRvIGEgc2ltcGxlIHRlc3QgdG8gY29u
ZmlybSBteSBvd24gdW5kZXJzdGFuZGluZyBoZXJlLCBidXQNCnRoYXQgZ290IGRlbGF5ZWQgZHVl
IHRvIHNvbWUgcHJvYmxlbXMgb24gbXkgZW5kLiBBbnl3YXkgdGhlIHRlc3QgSSBkaWQNCmdvZXMg
bGlrZSB0aGlzOiBlbmFibGUgbWVtY2cgYW5kIGdwdSBjZ291cHMgdHJhY2tpbmcgYW5kIHJ1biBh
IHByb2Nlc3MNCnRoYXQgYWxsb2NhdGVzIDEwME1pQiBvZiBkbWFidWZzLiBPYnNlcnZlIG1lbWNn
IGFuZCBncHUgYWNjb3VudGluZw0KdmFsdWVzIGJlZm9yZSBhbmQgYWZ0ZXIgdGhlIGFsbG9jYXRp
b24uDQoNCkJlZm9yZQ0KIyBjYXQgbWVtb3J5LmN1cnJlbnQgZ3B1Lm1lbW9yeS5jdXJyZW50DQox
NDkwOTQ0MA0Kc3lzdGVtIDANCg0KPFRlc3QgcHJvZ3JhbSBkb2VzIHRoZSBhbGxvY2F0aW9uIG9m
IDEwME1pQiBvZiBkbWFidWZzPg0KDQpBZnRlcg0KIyBjYXQgbWVtb3J5LmN1cnJlbnQgZ3B1Lm1l
bW9yeS5jdXJyZW50DQo0ODAyNTYwMA0Kc3lzdGVtIDEwNDg1NzYwMA0KDQpTbyB0aGUgbWVtY2cg
dmFsdWUgaW5jcmVhc2VzIGJ5IGFib3V0IDMwIE1pQiB3aGlsZSB0aGUgZ3B1IHZhbHVlcw0KaW5j
cmVhc2VzIGJ5IDEwMCBNaUIuIFRoaXMgaXMgd2l0aCBrbWVtIGVuYWJsZWQsIGFuZCB0aGUgL3By
b2MvbWFwcw0KZmlsZSBmb3IgdGhpcyBwcm9jZXNzIGluZGljYXRlcyB0aGF0IHRoZSBtYWpvcml0
eSBvZiB0aGF0IDMwIE1pQiBpcw0Ka2VybmVsIG1lbW9yeS4gSSB0aGluayB0aGlzIHJlc3VsdCBz
aG93cyB0aGF0IG5laXRoZXIgdGhlIGtlcm5lbCBub3INCnByb2Nlc3MgbWVtb3J5IG92ZXJsYXAg
d2l0aCB0aGUgZ3B1IGNncm91cCB0cmFja2luZyBvZiB0aGVzZQ0KYWxsb2NhdGlvbnMuIFNvIGRl
c3BpdGUgdGhlIGZhY3QgdGhhdCB0aGVzZSBidWZmZXJzIGFyZSBpbiBtYWluDQptZW1vcnksIHRo
ZXkgYXJlIGFsbG9jYXRlZCBpbiBhIHdheSB0aGF0IGRvZXMgbm90IHJlc3VsdCBpbiBtZW1jZw0K
YXR0cmlidXRpb24uIChJdCBsb29rcyB0byBtZSBsaWtlIF9fR0ZQX0FDQ09VTlQgaXMgbm90IHNl
dCBmb3IgdGhlc2UuKQ0KDQo+DQo+IFRoYW5rcywNCj4gTWljaGFsDQo+DQo+IFsxXQ0KPiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9yL0NBQmRtS1gyTlNBS01DNnJSZU1ZZm8yU1NWTnhFWGNTNDY2
aGszcUY2WUZ0LWotK19OUUBtYWlsLmdtYWlsLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
