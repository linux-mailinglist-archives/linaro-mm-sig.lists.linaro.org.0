Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4491CF0B8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:02:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9296061999
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:02:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8797166047; Tue, 12 May 2020 09:02:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F37D619CF;
	Tue, 12 May 2020 09:00:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BF6B0618C8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:00:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9223D618D7; Tue, 12 May 2020 09:00:03 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 7C6CD617CF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:00:00 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id k12so20802881wmj.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 02:00:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NZNungkfzjrpX3wvUKHqphES4AQA2BjvgdkrK2cjuiE=;
 b=oNmEBUmqxEAdGDHBr/UUf0ime+fq+Gfv1UwNdhvT56Sz7yXFh6uqHaE5x88k9MRuuz
 8qgHDqsGKIX56qkmU7B8noIPr6M5HupMN2S9pSsRto3DrJNlsyUdT0TMjGMU6P8IB5+c
 tTHvCRJx6M6tJONJQZlHGAKqMNXPs+qqlkaaWpBHFyKWFtzmPPgplogfpwhcIHjgmnRI
 E96neLL+4QMlXJjpwHoOdVKEnPDBmdO/qblaxZ4XCxWM292Ud0TPTVG+lmg4UaqsQIcf
 nhxlt+Pp3GaYVo1DeJQlgvIMekNKD6P019u3OHuC/+RDRWhmF+DeY/KS4Cm+J3I65SwY
 xS/Q==
X-Gm-Message-State: AGi0Puajn8UvXUU/LA/9VT8G1zT0U/A6KIjdchEbBCbHEtf/rY6W0nts
 Xwp646n6Hjns4Tou2mQEaAK6+Q==
X-Google-Smtp-Source: APiQypKft08OoGrIYtbiSYRYQwvgFtVy2fvk5tEE2SUvyg8qKyVKerp+e40UsbcgCmUWXpSeXbccUQ==
X-Received: by 2002:a05:600c:2055:: with SMTP id
 p21mr13223418wmg.127.1589273999661; 
 Tue, 12 May 2020 01:59:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y10sm18845457wrd.95.2020.05.12.01.59.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 01:59:59 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 12 May 2020 10:59:30 +0200
Message-Id: <20200512085944.222637-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [RFC 03/17] dma-fence: prime lockdep annotations
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

VHdvIGluIG9uZSBnbzoKLSBpdCBpcyBhbGxvd2VkIHRvIGNhbGwgZG1hX2ZlbmNlX3dhaXQoKSB3
aGlsZSBob2xkaW5nIGEKICBkbWFfcmVzdl9sb2NrKCkuIFRoaXMgaXMgZnVuZGFtZW50YWwgdG8g
aG93IGV2aWN0aW9uIHdvcmtzIHdpdGggdHRtLAogIHNvIHJlcXVpcmVkLgoKLSBpdCBpcyBhbGxv
d2VkIHRvIGNhbGwgZG1hX2ZlbmNlX3dhaXQoKSBmcm9tIG1lbW9yeSByZWNsYWltIGNvbnRleHRz
LAogIHNwZWNpZmljYWxseSBmcm9tIHNocmlua2VyIGNhbGxiYWNrcyAod2hpY2ggaTkxNSBkb2Vz
KSwgYW5kIGZyb20gbW11CiAgbm90aWZpZXIgY2FsbGJhY2tzICh3aGljaCBhbWRncHUgZG9lcywg
YW5kIHdoaWNoIGk5MTUgc29tZXRpbWVzIGFsc28KICBkb2VzLCBhbmQgcHJvYmFibHkgYWx3YXlz
IHNob3VsZCwgYnV0IHRoYXQncyBraW5kYSBhIGRlYmF0ZSkuIEFsc28KICBmb3Igc3R1ZmYgbGlr
ZSBITU0gd2UgcmVhbGx5IG5lZWQgdG8gYmUgYWJsZSB0byBkbyB0aGlzLCBvciB0aGluZ3MKICBn
ZXQgcmVhbCBkaWNleS4KCkNvbnNlcXVlbmNlIGlzIHRoYXQgYW55IGNyaXRpY2FsIHBhdGggbmVj
ZXNzYXJ5IHRvIGdldCB0byBhCmRtYV9mZW5jZV9zaWduYWwgZm9yIGEgZmVuY2UgbXVzdCBuZXZl
ciBhKSBjYWxsIGRtYV9yZXN2X2xvY2sgbm9yIGIpCmFsbG9jYXRlIG1lbW9yeSB3aXRoIEdGUF9L
RVJORUwuIEFsc28gYnkgaW1wbGljYXRpb24gb2YKZG1hX3Jlc3ZfbG9jaygpLCBubyB1c2Vyc3Bh
Y2UgZmF1bHRpbmcgYWxsb3dlZC4gVGhhdCdzIHNvbWUgc3VwcmVtZWx5Cm9ibm94aW91cyBsaW1p
dGF0aW9ucywgd2hpY2ggaXMgd2h5IHdlIG5lZWQgdG8gc3ByaW5rbGUgdGhlIHJpZ2h0CmFubm90
YXRpb25zIHRvIGFsbCByZWxldmFudCBwYXRocy4KClRoZSBvbmUgYmlnIGxvY2tpbmcgY29udGV4
dCB3ZSdyZSBsZWF2aW5nIG91dCBoZXJlIGlzIG1tdSBub3RpZmllcnMsCmFkZGVkIGluCgpjb21t
aXQgMjNiNjgzOTVjN2M3OGE3NjRlODk2M2ZjMTVhN2NmZDMxOGJmMTg3ZgpBdXRob3I6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkRhdGU6ICAgTW9uIEF1ZyAyNiAyMjox
NDoyMSAyMDE5ICswMjAwCgogICAgbW0vbW11X25vdGlmaWVyczogYWRkIGEgbG9ja2RlcCBtYXAg
Zm9yIGludmFsaWRhdGVfcmFuZ2Vfc3RhcnQvZW5kCgp0aGF0IG9uZSBjb3ZlcnMgYSBsb3Qgb2Yg
b3RoZXIgY2FsbHNpdGVzLCBhbmQgaXQncyBhbHNvIGFsbG93ZWQgdG8Kd2FpdCBvbiBkbWEtZmVu
Y2VzIGZyb20gbW11IG5vdGlmaWVycy4gQnV0IHRoZXJlJ3Mgbm8gcmVhZHktbWFkZQpmdW5jdGlv
bnMgZXhwb3NlZCB0byBwcmltZSB0aGlzLCBzbyBJJ3ZlIGxlZnQgaXQgb3V0IGZvciBub3cuCgpD
YzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKQ2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLXJl
c3YuYyB8IDEgKwogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCAgfCAxICsKIDIgZmlsZXMgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1y
ZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwppbmRleCA5OWMwYTMzYzkxOGQuLjM5
MmMzMzZmMDczMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKQEAgLTExNSw2ICsxMTUsNyBAQCBzdGF0aWMgaW50
IF9faW5pdCBkbWFfcmVzdl9sb2NrZGVwKHZvaWQpCiAJaWYgKHJldCA9PSAtRURFQURMSykKIAkJ
ZG1hX3Jlc3ZfbG9ja19zbG93KCZvYmosICZjdHgpOwogCWZzX3JlY2xhaW1fYWNxdWlyZShHRlBf
S0VSTkVMKTsKKwlfX2RtYV9mZW5jZV9taWdodF93YWl0KCk7CiAJZnNfcmVjbGFpbV9yZWxlYXNl
KEdGUF9LRVJORUwpOwogCXd3X211dGV4X3VubG9jaygmb2JqLmxvY2spOwogCXd3X2FjcXVpcmVf
ZmluaSgmY3R4KTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNs
dWRlL2xpbnV4L2RtYS1mZW5jZS5oCmluZGV4IDNmMjg4ZjdkYjJlZi4uMDllMjNhZGIzNTFkIDEw
MDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCisrKyBiL2luY2x1ZGUvbGludXgv
ZG1hLWZlbmNlLmgKQEAgLTM2MCw2ICszNjAsNyBAQCBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlKHN0
cnVjdCBkbWFfZmVuY2UgX19yY3UgKipmZW5jZXApCiAjaWZkZWYgQ09ORklHX0xPQ0tERVAKIGJv
b2wgZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcodm9pZCk7CiB2b2lkIGRtYV9mZW5jZV9lbmRf
c2lnbmFsbGluZyhib29sIGNvb2tpZSk7Cit2b2lkIF9fZG1hX2ZlbmNlX21pZ2h0X3dhaXQodm9p
ZCk7CiAjZWxzZQogc3RhdGljIGlubGluZSBib29sIGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5n
KHZvaWQpCiB7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
