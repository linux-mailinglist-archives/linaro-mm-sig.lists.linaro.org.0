Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CF648DDB8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 19:34:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 71C8B3ED94
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 18:34:43 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lists.linaro.org (Postfix) with ESMTPS id 32A243EDB6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jan 2022 17:20:39 +0000 (UTC)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 20DCX37F024235;
	Thu, 13 Jan 2022 18:20:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=selector1;
 bh=++hhBhDWT399G71LYULcHRNaIjBDDO8fm6c/SKc4m28=;
 b=zKN6MQrqaf9b/MdZ7PjWgSLFhY9KeN49NoNjiKN/VlRrnXN4LXvnmwtDnXf71dDzDZO1
 KmNSopTdiT5tNVLa/WIbPos3MAat9EVhXy2YYidLxqL5QXQ3NcZGpZg9fuQR0A0W8FjK
 VlPUOsoaAZOoBComMz0EAJCA3Ir61GqwKwgtljjWj9KE4Uwwqfu1VEMqCLtZsRH5QrQD
 XBKh95CfvUnzjJZ5rjJMPwM34sDk2x8KeLBUtMWlkwJjuWZuCErcF+fVQzaLE+NgoEhO
 dKAmc4yu5i17mlHYsIs6z2j2uB2bU6do+f6NSpLqfqatHrmVCuSWIn1sBo8+DUjbIEpV MQ==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3djfywtwju-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 13 Jan 2022 18:20:17 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F061010002A;
	Thu, 13 Jan 2022 18:20:16 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E59182194E7;
	Thu, 13 Jan 2022 18:20:16 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.26; Thu, 13 Jan 2022 18:20:16
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
Date: Thu, 13 Jan 2022 18:19:20 +0100
Message-ID: <20220113171921.17466-2-philippe.cornu@foss.st.com>
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
Message-ID-Hash: VTVTGN74OCZXASJCFF3QFE4X6RTP2STX
X-Message-ID-Hash: VTVTGN74OCZXASJCFF3QFE4X6RTP2STX
X-Mailman-Approved-At: Thu, 13 Jan 2022 18:34:39 +0000
CC: dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/2] MAINTAINERS: Update Benjamin Gaignard maintainer status
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VTVTGN74OCZXASJCFF3QFE4X6RTP2STX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Update Benjamin Gaignard address and remove it from no more maintained
drivers.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 MAINTAINERS | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7a2345ce8521..6bea080d0159 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5702,7 +5702,7 @@ F:	tools/testing/selftests/dma/
 
 DMA-BUF HEAPS FRAMEWORK
 M:	Sumit Semwal <sumit.semwal@linaro.org>
-R:	Benjamin Gaignard <benjamin.gaignard@linaro.org>
+R:	Benjamin Gaignard <benjamin.gaignard@collabora.com>
 R:	Liam Mark <lmark@codeaurora.org>
 R:	Laura Abbott <labbott@redhat.com>
 R:	Brian Starkey <Brian.Starkey@arm.com>
@@ -6423,7 +6423,6 @@ F:	Documentation/devicetree/bindings/display/rockchip/
 F:	drivers/gpu/drm/rockchip/
 
 DRM DRIVERS FOR STI
-M:	Benjamin Gaignard <benjamin.gaignard@linaro.org>
 L:	dri-devel@lists.freedesktop.org
 S:	Maintained
 T:	git git://anongit.freedesktop.org/drm/drm-misc
@@ -6433,7 +6432,6 @@ F:	drivers/gpu/drm/sti
 DRM DRIVERS FOR STM
 M:	Yannick Fertre <yannick.fertre@foss.st.com>
 M:	Philippe Cornu <philippe.cornu@foss.st.com>
-M:	Benjamin Gaignard <benjamin.gaignard@linaro.org>
 L:	dri-devel@lists.freedesktop.org
 S:	Maintained
 T:	git git://anongit.freedesktop.org/drm/drm-misc
@@ -18154,7 +18152,6 @@ F:	Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt
 F:	sound/soc/sti/
 
 STI CEC DRIVER
-M:	Benjamin Gaignard <benjamin.gaignard@linaro.org>
 S:	Maintained
 F:	Documentation/devicetree/bindings/media/stih-cec.txt
 F:	drivers/media/cec/platform/sti/
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
