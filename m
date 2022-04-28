Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1445134B4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 15:17:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C737F48014
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 13:17:02 +0000 (UTC)
Received: from mo-csw.securemx.jp (mo-csw1116.securemx.jp [210.130.202.158])
	by lists.linaro.org (Postfix) with ESMTPS id 5F10447FCA
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Apr 2022 13:16:56 +0000 (UTC)
Received: by mo-csw.securemx.jp (mx-mo-csw1116) id 23SDGbRK018424; Thu, 28 Apr 2022 22:16:37 +0900
X-Iguazu-Qid: 2wGrGTuS1I2Z8bnOL3
X-Iguazu-QSIG: v=2; s=0; t=1651151797; q=2wGrGTuS1I2Z8bnOL3; m=vTJ6ckY81jUCbBKkXlSrCMGDElvP52HN/qK932dNoWU=
Received: from imx2-a.toshiba.co.jp (imx2-a.toshiba.co.jp [106.186.93.35])
	by relay.securemx.jp (mx-mr1112) id 23SDGahF017435
	(version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 28 Apr 2022 22:16:36 +0900
X-SA-MID: 37013503
From: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
To: Rob Herring <robh+dt@kernel.org>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Thu, 28 Apr 2022 22:11:28 +0900
X-TSB-HOP2: ON
Message-Id: <20220428131128.5053-5-yuji2.ishikawa@toshiba.co.jp>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220428131128.5053-1-yuji2.ishikawa@toshiba.co.jp>
References: <20220428131128.5053-1-yuji2.ishikawa@toshiba.co.jp>
Message-ID-Hash: S4VCZ3YGKI2PIMSRYO5QEY65VKEUSSHB
X-Message-ID-Hash: S4VCZ3YGKI2PIMSRYO5QEY65VKEUSSHB
X-MailFrom: yuji2.ishikawa@toshiba.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, yuji2.ishikawa@toshiba.co.jp
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/4] MAINTAINERS: Add entries for Toshiba Visconti DNN image processing accelerator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S4VCZ3YGKI2PIMSRYO5QEY65VKEUSSHB/>
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
