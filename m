Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 511FD26ACE2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Sep 2020 21:02:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66B0A60CB2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Sep 2020 19:02:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5779D666D5; Tue, 15 Sep 2020 19:02:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 573C86174E;
	Tue, 15 Sep 2020 19:02:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5046C60C2F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Sep 2020 19:02:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3A6B06174E; Tue, 15 Sep 2020 19:02:20 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id 3262E60C2F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Sep 2020 19:02:19 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a9so562812wmm.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Sep 2020 12:02:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yXie8KLV7ShlZWhEm9UlbuFqIWQ7E77axILBYs0CyOY=;
 b=aowUfF8MNdrqxvW3HO376frJeNZSwFyip/IyxCLfSnOj3/PGlnpacHuRkDEVGQACuh
 XJaE+6MkW3Uv9rvExUZT75qkW/CD0DwxktwExwK942RszTNZzrW7VyDarDLpBKJJqf+d
 QAO5TCZ4H5Ohd4zUsYHp/ibE9e1BcUb7j1ieFsQyUw5WU2Ejj/sqeJlu+NLvNDh1ueKs
 qRBRwfjfEHe8iERBn31QyIkcWQzu8ub23eYwkPbQ5aJbTtg1ke26L/nvVZ+f67PtkYvf
 SSgQ97suJYbJtI10TaFyWzVzJgyGVlc2lEcngYNbU6wGZ7V+FqCK8rk45DvFEIgi9GOe
 wz/A==
X-Gm-Message-State: AOAM530Q5nyz3xy6quz8wNi0ucmUTeovdjFafi6BUWt8TEdP1SYo9mP9
 PMIj96pIZt6NqIjWImHNyd3SeKxeE0lJCvyoJ+4=
X-Google-Smtp-Source: ABdhPJzk9eyxFbI1rJI68h478tr8wfvyAYGWtTFclkkVdtqdvg+JoAVZ3j4OlPmVc8RQgrxC9TLlU1GoxApBrz0roOA=
X-Received: by 2002:a7b:c141:: with SMTP id z1mr793609wmi.79.1600196538282;
 Tue, 15 Sep 2020 12:02:18 -0700 (PDT)
MIME-Version: 1.0
References: <1599638225-39300-1-git-send-email-tiantao6@hisilicon.com>
 <665ed169-cc12-2e6e-11f9-bc1a69fdaad7@amd.com>
In-Reply-To: <665ed169-cc12-2e6e-11f9-bc1a69fdaad7@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 15 Sep 2020 15:02:07 -0400
Message-ID: <CADnq5_Mj4bJ-FMORL9cvex5E_5gO6p5CQqTvcDSA0OZoPeHevQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Dave Airlie <airlied@linux.ie>, linuxarm@huawei.com,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Ben Dooks <ben.dooks@codethink.co.uk>, Daniel Vetter <daniel@ffwll.ch>,
 "Deucher, Alexander" <alexander.deucher@amd.com>,
 Tian Tao <tiantao6@hisilicon.com>, linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] drm/scheduler: fix sched_fence.c
	kernel-doc warnings
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIFdlZCwgU2VwIDksIDIwMjAgYXQgNToxMSBBTSBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+Cj4gQW0g
MDkuMDkuMjAgdW0gMDk6NTcgc2NocmllYiBUaWFuIFRhbzoKPiA+IEZpeCBrZXJuZWwtZG9jIHdh
cm5pbmdzLgo+ID4gZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jOjExMDog
d2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yCj4gPiBtZW1iZXIgJ2YnIG5vdCBkZXNjcmli
ZWQgaW4gJ2RybV9zY2hlZF9mZW5jZV9yZWxlYXNlX3NjaGVkdWxlZCcKPiA+IGRyaXZlcnMvZ3B1
L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYzoxMTA6IHdhcm5pbmc6IEV4Y2VzcyBmdW5jdGlv
bgo+ID4gcGFyYW1ldGVyICdmZW5jZScgZGVzY3JpcHRpb24gaW4gJ2RybV9zY2hlZF9mZW5jZV9y
ZWxlYXNlX3NjaGVkdWxlZCcKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBUaWFuIFRhbyA8dGlhbnRh
bzZAaGlzaWxpY29uLmNvbT4KPgo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+Cj4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX2ZlbmNlLmMgfCAyICstCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3Nj
aGVkX2ZlbmNlLmMKPiA+IGluZGV4IDhiNDVjM2ExYjg0Li42OWRlMmM3IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMKPiA+IEBAIC0xMDEsNyArMTAxLDcg
QEAgc3RhdGljIHZvaWQgZHJtX3NjaGVkX2ZlbmNlX2ZyZWUoc3RydWN0IHJjdV9oZWFkICpyY3Up
Cj4gPiAgIC8qKgo+ID4gICAgKiBkcm1fc2NoZWRfZmVuY2VfcmVsZWFzZV9zY2hlZHVsZWQgLSBj
YWxsYmFjayB0aGF0IGZlbmNlIGNhbiBiZSBmcmVlZAo+ID4gICAgKgo+ID4gLSAqIEBmZW5jZTog
ZmVuY2UKPiA+ICsgKiBAZjogZmVuY2UKPiA+ICAgICoKPiA+ICAgICogVGhpcyBmdW5jdGlvbiBp
cyBjYWxsZWQgd2hlbiB0aGUgcmVmZXJlbmNlIGNvdW50IGJlY29tZXMgemVyby4KPiA+ICAgICog
SXQganVzdCBSQ1Ugc2NoZWR1bGVzIGZyZWVpbmcgdXAgdGhlIGZlbmNlLgo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGlu
ZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
