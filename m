Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C58957DC78
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Jul 2022 10:35:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A63A4793C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Jul 2022 08:35:03 +0000 (UTC)
Received: from mo-csw.securemx.jp (mo-csw1116.securemx.jp [210.130.202.158])
	by lists.linaro.org (Postfix) with ESMTPS id 6B3964796E
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Jul 2022 08:34:48 +0000 (UTC)
Received: by mo-csw.securemx.jp (mx-mo-csw1116) id 26M8YN5O010501; Fri, 22 Jul 2022 17:34:23 +0900
X-Iguazu-Qid: 2wHHJgaTyWPqPTIE4t
X-Iguazu-QSIG: v=2; s=0; t=1658478862; q=2wHHJgaTyWPqPTIE4t; m=28XmJNhu9oMp/+/VlGY2sVi9qyuPrWXzzC1Tz25r85Y=
Received: from imx12-a.toshiba.co.jp ([38.106.60.135])
	by relay.securemx.jp (mx-mr1113) id 26M8YKba013052
	(version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 22 Jul 2022 17:34:21 +0900
X-SA-MID: 39258159
From: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
To: Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Jonathan Corbet <corbet@lwn.net>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Fri, 22 Jul 2022 17:28:57 +0900
X-TSB-HOP2: ON
Message-Id: <20220722082858.17880-5-yuji2.ishikawa@toshiba.co.jp>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220722082858.17880-1-yuji2.ishikawa@toshiba.co.jp>
References: <20220722082858.17880-1-yuji2.ishikawa@toshiba.co.jp>
Message-ID-Hash: AQYUD26KGTKZ7ZYRFKURVSZX6GOUAW3A
X-Message-ID-Hash: AQYUD26KGTKZ7ZYRFKURVSZX6GOUAW3A
X-MailFrom: yuji2.ishikawa@toshiba.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, yuji2.ishikawa@toshiba.co.jp
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 4/5] MAINTAINERS: Add entries for Toshiba Visconti DNN image processing accelerator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AQYUD26KGTKZ7ZYRFKURVSZX6GOUAW3A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index dd36acc87..a2e2bd719 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2796,12 +2796,14 @@ F:	Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
 F:	Documentation/devicetree/bindings/gpio/toshiba,gpio-visconti.yaml
 F:	Documentation/devicetree/bindings/pci/toshiba,visconti-pcie.yaml
 F:	Documentation/devicetree/bindings/pinctrl/toshiba,visconti-pinctrl.yaml
+F:	Documentation/devicetree/bindings/soc/visconti/
 F:	Documentation/devicetree/bindings/watchdog/toshiba,visconti-wdt.yaml
 F:	arch/arm64/boot/dts/toshiba/
 F:	drivers/net/ethernet/stmicro/stmmac/dwmac-visconti.c
 F:	drivers/gpio/gpio-visconti.c
 F:	drivers/pci/controller/dwc/pcie-visconti.c
 F:	drivers/pinctrl/visconti/
+F:	drivers/soc/visconti/
 F:	drivers/watchdog/visconti_wdt.c
 N:	visconti
 
-- 
2.17.1


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
