Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7228748DDB7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 19:34:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9DD5D3EDA2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 18:34:29 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lists.linaro.org (Postfix) with ESMTPS id 04CE93EDB5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jan 2022 17:20:37 +0000 (UTC)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 20DCTnGQ024245;
	Thu, 13 Jan 2022 18:20:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=selector1;
 bh=toNwEi+iywkGzWNpim3RHW1l83fPbcMs07ZSO0fJ5d4=;
 b=0EzYTP7uVupL6z7KwopEskrLkt6spRvqCYr+HGpesyhVCzCwVtX3EHN9I5g1ypkpEm6l
 ccRHSGxF6Y4OnqZulduq+tJ+oVy58mEd16BhlH7a5UaHqNuc6wxKJbIL1kmFbcbMQneF
 vf/agm2dOGrSjKJP36jR70ysDlR1v+gXNYvEU16dvBVDWQLQpkcFbLFHpmGO5v2BIT4L
 OQOSjAkCnJZrZWbVLZMeg+G5y5AD5YmT+5fdZ64429din7a1HbpkSpROqN6HrBhNPZ29
 hisg3s8RUYkBpBan8p45xNU64/UoEunHQFY04/m8SgLmo0VP94+6v4nhdrsb3xybpJfh Cw==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3djfywtwk1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 13 Jan 2022 18:20:19 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3114F10002A;
	Thu, 13 Jan 2022 18:20:19 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 26C462194DA;
	Thu, 13 Jan 2022 18:20:19 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.26; Thu, 13 Jan 2022 18:20:18
 +0100
From: Philippe Cornu <philippe.cornu@foss.st.com>
To: Yannick Fertre <yannick.fertre@foss.st.com>,
        Raphael Gallais-Pou
	<raphael.gallais-pou@foss.st.com>,
        Philippe Cornu
	<philippe.cornu@foss.st.com>,
        David Airlie <airlied@linux.ie>, Daniel Vetter
	<daniel@ffwll.ch>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre
 Torgue <alexandre.torgue@foss.st.com>,
        Alain Volmat
	<alain.volmat@foss.st.com>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Mauro
 Carvalho Chehab <mchehab@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Liam Mark
	<lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
        Brian Starkey
	<Brian.Starkey@arm.com>,
        John Stultz <john.stultz@linaro.org>,
        Christian
 Konig <christian.koenig@amd.com>, <soc@kernel.org>
Date: Thu, 13 Jan 2022 18:19:21 +0100
Message-ID: <20220113171921.17466-3-philippe.cornu@foss.st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220113171921.17466-1-philippe.cornu@foss.st.com>
References: <20220113171921.17466-1-philippe.cornu@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-13_08,2022-01-13_01,2021-12-02_01
X-MailFrom: prvs=701251d2ab=philippe.cornu@foss.st.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: G4IHVMLCOGLMLDMPJ6OLUNRGA3HM7BS3
X-Message-ID-Hash: G4IHVMLCOGLMLDMPJ6OLUNRGA3HM7BS3
X-Mailman-Approved-At: Thu, 13 Jan 2022 18:34:27 +0000
CC: dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/2] MAINTAINERS: update drm/stm drm/sti and cec/sti maintainers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G4IHVMLCOGLMLDMPJ6OLUNRGA3HM7BS3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWRkIEFsYWluIGFzIHN0aSBtYWludGFpbmVyIGZvciBib3RoIGRybS9zdGkgJiBjZWMvc3RpLg0K
QWRkIFJhcGhhw6tsIGFzIHN0bSBtYWludGFpbmVyIGZvciBkcm0vc3RtLg0KDQpTaWduZWQtb2Zm
LWJ5OiBQaGlsaXBwZSBDb3JudSA8cGhpbGlwcGUuY29ybnVAZm9zcy5zdC5jb20+DQotLS0NCiBN
QUlOVEFJTkVSUyB8IDMgKysrDQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KDQpk
aWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUw0KaW5kZXggNmJlYTA4MGQwMTU5
Li43MDhmOGM4NmU0YzkgMTAwNjQ0DQotLS0gYS9NQUlOVEFJTkVSUw0KKysrIGIvTUFJTlRBSU5F
UlMNCkBAIC02NDIzLDYgKzY0MjMsNyBAQCBGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9yb2NrY2hpcC8NCiBGOglkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvDQog
DQogRFJNIERSSVZFUlMgRk9SIFNUSQ0KK006CUFsYWluIFZvbG1hdCA8YWxhaW4udm9sbWF0QGZv
c3Muc3QuY29tPg0KIEw6CWRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCiBTOglNYWlu
dGFpbmVkDQogVDoJZ2l0IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0tbWlz
Yw0KQEAgLTY0MzEsNiArNjQzMiw3IEBAIEY6CWRyaXZlcnMvZ3B1L2RybS9zdGkNCiANCiBEUk0g
RFJJVkVSUyBGT1IgU1RNDQogTToJWWFubmljayBGZXJ0cmUgPHlhbm5pY2suZmVydHJlQGZvc3Mu
c3QuY29tPg0KK006CVJhcGhhZWwgR2FsbGFpcy1Qb3UgPHJhcGhhZWwuZ2FsbGFpcy1wb3VAZm9z
cy5zdC5jb20+DQogTToJUGhpbGlwcGUgQ29ybnUgPHBoaWxpcHBlLmNvcm51QGZvc3Muc3QuY29t
Pg0KIEw6CWRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCiBTOglNYWludGFpbmVkDQpA
QCAtMTgxNTIsNiArMTgxNTQsNyBAQCBGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3Mvc291bmQvc3Qsc3RpLWFzb2MtY2FyZC50eHQNCiBGOglzb3VuZC9zb2Mvc3RpLw0KIA0KIFNU
SSBDRUMgRFJJVkVSDQorTToJQWxhaW4gVm9sbWF0IDxhbGFpbi52b2xtYXRAZm9zcy5zdC5jb20+
DQogUzoJTWFpbnRhaW5lZA0KIEY6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZWRpYS9zdGloLWNlYy50eHQNCiBGOglkcml2ZXJzL21lZGlhL2NlYy9wbGF0Zm9ybS9zdGkvDQot
LSANCjIuMTcuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
