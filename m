Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E67C8C603F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 07:43:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35C9F44390
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 05:43:40 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id 9FD973E937
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 May 2024 05:43:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=nVgWrQo+;
	dkim=pass header.d=mediateko365.onmicrosoft.com header.s=selector2-mediateko365-onmicrosoft-com header.b=rKczmjQf;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
X-UUID: 0a4a02c8127e11efb92737409a0e9459-20240515
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=pvAHpDK2dCg2C/jH0moLcIgg2ApZJrFHALAsOhBhMoU=;
	b=nVgWrQo+L3Jn2ZOmdOZyTSu55dcbim3wtbQVIl2B6pL5TTgjLbdSPou/xQaxV1YxosUchgRgZoWPextr/gwi8eO250zYh0NmB7AQHqfo2ulgCdZguhBUDpvHvcrC7uuKcgTuHzgrzrbvn8ZxMnCSPDJBI9WSzz5k8wHIaTml/qs=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:e4084995-8ed7-4733-9a56-63b239d736f0,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:82c5f88,CLOUDID:9b23df83-4f93-4875-95e7-8c66ea833d57,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 0a4a02c8127e11efb92737409a0e9459-20240515
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1215154843; Wed, 15 May 2024 13:43:21 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 15 May 2024 13:43:19 +0800
Received: from HK2PR02CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 15 May 2024 13:43:19 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dC/gfFNrEElx0E75DkeE2dAieeGq1ZAUR8fiEFh90ThskkSPsviMMkcmyQ5a/uabmoELO95cwjfoRBL6ofnPRLBFXNVvc76e/6Y9VYkmY9WCv+qXp81YxYsbeQjVTVDW0Sgb97xVQOvH8lEs2n4+BgFriUpTnuiuuZjj3NEk8RtvjMnOU99o98Op7+VXIMtcMb9hBatqkdLsVB4q89FSMmb4MBV7vYH/jvEwLAdw8jZ+hUmfv+XtHyJFw24fImU1o1stkWV2eC3GUlpF8Joct5+cxekGTDE6ZU7qzLXiKbFW0IRwpJR3vSmVucy2LXYUxGCNO1bF3Yux/ZHCHzZ/Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pvAHpDK2dCg2C/jH0moLcIgg2ApZJrFHALAsOhBhMoU=;
 b=X9/k3ffd/5OYNov9cdCxClgeJkV8dLVLnyfd1lgFLUIXAKQ+6fu9vSAz0DDgan/AeEDoHbfFgriHM87FvmQ+tnFNPlQLZjYnjph3EzjuJjNi0rKWzwfA/uz/nB+8gRzQAITdtzkqZ5kDj2le53H26YQ3oj9nmXw+UR9Y+l92l0IO7MC21S64uKtqNBJDkkTQLH4qN8Fbx1uJ+GRw3vN4a2VP6xURZehpz5DZmDIyD1Lv7hj8SRAty8PjVQGRzYK8aVLdZNFrZgHYEij8INbwgmuz3NmT7IO3rrHPdIctG9cmaZ+xdiTXKtvS9+hGScLXaSPyxN2kEowN4Y4csbSWRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pvAHpDK2dCg2C/jH0moLcIgg2ApZJrFHALAsOhBhMoU=;
 b=rKczmjQfhWtG6VGRVA5glmrbr9O5ejwt6IwFfiZolWqfmpkqNyY6sAO7SvI5MN5+1fCdRYlV4Qk3ZLmcGIEOxhKBQC1vMLmQSMGw3yKW8hh19xkeTp4GidamTZ4n+7QO5P7zGnMIe6fqzGs9lht65HPZ+JyKIpH5/PnNDu7rYAk=
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com (2603:1096:4:142::7) by
 KL1PR03MB8161.apcprd03.prod.outlook.com (2603:1096:820:ff::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7587.25; Wed, 15 May 2024 05:43:18 +0000
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::683a:246a:d31f:1c0]) by SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::683a:246a:d31f:1c0%4]) with mapi id 15.20.7587.026; Wed, 15 May 2024
 05:43:18 +0000
From: =?utf-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>
To: "joakim.bech@linaro.org" <joakim.bech@linaro.org>
Thread-Topic: [PATCH v4 3/7] dma-buf: heaps: restricted_heap: Add private heap
 ops
Thread-Index: AQHaRTi35ticVAOxfE2Wwt+Him4V07D0D1yAgKR7xIA=
Date: Wed, 15 May 2024 05:43:17 +0000
Message-ID: <3e2dc2f248cf159a53c927eeb164967ad3b3c09d.camel@mediatek.com>
References: <20240112092014.23999-1-yong.wu@mediatek.com>
	 <20240112092014.23999-4-yong.wu@mediatek.com>
	 <20240131135343.rj6xlch6zcev2v47@pop-os.localdomain>
In-Reply-To: <20240131135343.rj6xlch6zcev2v47@pop-os.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SI2PR03MB5885:EE_|KL1PR03MB8161:EE_
x-ms-office365-filtering-correlation-id: 3202b9a1-abe8-4157-250c-08dc74a1ec24
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|376005|366007|1800799015|7416005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?TC9zTmJpM01yNytoUzVSdzJuOU1PVm9rV1lmTVU5VmsvQ3JwZXNrbDFTZ1Vj?=
 =?utf-8?B?Y2F0WERhMEJ4YTJmKyt5VEp3cXhrTkcwdGlhbmlpRVAwcTlNM1NjYStUOVIz?=
 =?utf-8?B?L3BqbWlCN3lpSjNoTythaFZpMnBSdTdCUUw5c0ZoMURkSVZRUW9FV3RSZ2l2?=
 =?utf-8?B?dzlSeFhmUTlObmhMb3RQeWhncER4SVo1UUVDZDFkeTl4Y3VSVFo2aHdJUCs0?=
 =?utf-8?B?Si9uaUo4OEJuQ3lUSW9vOStmRXFEVDZSc0V6bDFKSHl5MFllNll1UkFuOGV5?=
 =?utf-8?B?MjF3eHBIbE1VZDI2K3Uya0RTUTJMMnBMQUpLRDZqT1pKR3l3Nlc4cHpYNGlB?=
 =?utf-8?B?eDRpZDY3TlRkMzZhcDRrVkR0ZmRUdG5teFBjWkl6ZmVVMlZaMjl0eTAzQVZL?=
 =?utf-8?B?UytoVHg0ZnJ2OW5RTFFpbXpQSXNJYllKSTA4c1lKTVRYbjNUVzEwQ2RZb0sw?=
 =?utf-8?B?eVE1a1RqTldyTVg1V1hLTnA2ejZFMXVFWWZFc3ZsWXhFNFgwT0tKVE1adCt6?=
 =?utf-8?B?aEYxTVZ1cU5WalhLUUwvTGFIQzNlYmZkWGU3cXhleXhOOHNUcG02UjVkaVJI?=
 =?utf-8?B?WFZBRHdDMEprQlRzSlVvYzYwaXp2N2lZL3RkNjNlU0h5ZlFTS1hZdGR3Y0lI?=
 =?utf-8?B?enNhZkdpK2FlREJyT0g1RUg3VGw3Z1h0Ulg0cU01REtqZlh6bE1MVWl1Y0lW?=
 =?utf-8?B?V2kwODhublNmeFFWdFl0VXowOU5RcUNaZE5XRlB4UXVtaE5RS1krQzlpMVpu?=
 =?utf-8?B?OFV0T0VDVUJnS0NoT2pOWWtEbkgyc1B3SnJXa21oS1FnVWwxVEV4UER5akdD?=
 =?utf-8?B?NGIzdmlWbDVONjZDSFlhbldaeHUvcjQ2emsyenkwRHJuTFdNdXlhN1FhRm15?=
 =?utf-8?B?aUdHcHBsYU9YdWhtZmtueTRsK1JvR1BJZWs1Rk5ZYWdrd094U3UwT2FsYlNY?=
 =?utf-8?B?VlhUUUJDNURmdTFtT0JmNyt0R1RGeWFlQ0g1QVZqc3NSeEpDTFZmSU9YQzh1?=
 =?utf-8?B?MkxwcDNycmt4ZHA2QldWU25UWjNuWDlXb1JuZU1hbDNNcmNmenhzMEIxbWgx?=
 =?utf-8?B?SlVVTDkvemtQK3FvZkZvL0J0Z2hpNmpRVWh0SENER0pjL01ocTFnZFdQUnY1?=
 =?utf-8?B?WHQ5a1Q2Undqa3lqU21nTmVwdUJSVUFQZW9nMXZuQk1vd3FMd2hwT0pHcnlj?=
 =?utf-8?B?eVJxcTJkMHdiUFFOeElycTFmcmZNUVBPRGs1bGVGem44T3REVDNHUnpxUUh6?=
 =?utf-8?B?Q1VDMWV3RFBhVU5iaVRPMG8ybUpHckVzdDJlR1oyQ0FPakczTUZlOWJjYVI0?=
 =?utf-8?B?RGo5Wm5EeXFSRGdoUkpLYUc0OGJGaUZQeXRSZEU0TjZBWHNwWitjMTA2NU1i?=
 =?utf-8?B?amhXSTRRY0Rzc0RHVlI4OGM4emFhSnBxUVc0NDZVb1R0T0FDbVJSRnA4VHgr?=
 =?utf-8?B?cnlwTXJ4ME0rSW9wcFRRMW9nZUc4ZStuVkdvT2dPWHNqV1hJV2tZWm16N2sv?=
 =?utf-8?B?YnF0aHJYWEU2S2JNSDUvcksxaFpwZmo2L2lBRFdLaHNrcnN1L2RvbWVhWXpR?=
 =?utf-8?B?THIwQWRzMFhDektWZ1FNcUdqbnZTYmJDbFUrVnFORit6Uzl6WUYrMWVPaER3?=
 =?utf-8?B?TllKUUk3VDFJNi9KeFdEVDB6SXQ4dmVxL00zY2UvZmRLb3B4eGVPR0NtMlNu?=
 =?utf-8?B?U284RGhkRzJsZTI3Tk8zMmxlNmFiTFh0VXA2OVJMWm8zS3dyTEtObFNyN0t3?=
 =?utf-8?B?RktxVk1rWUFXMDdYSExqY1hBYWhNaEtLOUNHWUpzUXZuZHFuOU1tRTgwbWlv?=
 =?utf-8?B?Mnp0WmhsUUZJbHRXTlkyUT09?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR03MB5885.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015)(7416005)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFNyVlE5RnBramhVbXZNb085SDdRMm03S1ZsS0V1WVZPM2d0dFlLa2pPMFVU?=
 =?utf-8?B?bEQ0eElHdGZyWTNxQUplMEpvK2ZsZkdVVnhrTG5oTzNjTHhoNG1TVWV4TUFF?=
 =?utf-8?B?bU5DZE0vaDRqYUg1c0xlaE1QMUZBQkdPcXNwMWZWbTI3ejFDWmFmREc1ditS?=
 =?utf-8?B?VVFaQnE4TGRDeDg5VGZmU1NQOUlGL0Q3cGc1L1pobTh1YjBzRGlDU1EvQjFu?=
 =?utf-8?B?bWRDVE5SY1htQ2lnMU1McExzTXFxclMzV3lYd0JmN2hqTVZMeFJTcVVpMlBZ?=
 =?utf-8?B?YmsrQUpZVnlSKzdOTDJROTRQRkZ3N011c25GNFBGVEhHcVYyQkJSNFRKZ0Rk?=
 =?utf-8?B?aklYd1k3V3JQa240STZoQVZJdm95dUp0L1dzR2FZTTJBeXN0ZDZ1bHAzZjUz?=
 =?utf-8?B?VlhnYldrc0xUNXpNM040bCtUU3dJc1RoWUphVEY2Q1oxa1ZQYlZobEJ5aVRJ?=
 =?utf-8?B?ZTd4eFJVY0U2MjczNC9nVDNWaVlad3lNSGNid3Y0empjMU9uV055RHBSMGty?=
 =?utf-8?B?SlV3V1ZHM1Q1UVVGKzczQktqOW9OTzZGZUdHdmRoOVN4eG5wVG1XaGR4Qmc2?=
 =?utf-8?B?dFlqMnlseXJPY1hwRUNxNkcza1VjM2h2bUx0VzF0aGJrOTIrRWFnVlJZcDRy?=
 =?utf-8?B?cnBydWk4Q2QzYVRsZFZodjh1K3F6MUJMTGdzY2wzSm5pNUZpcmFtaUdIOUxu?=
 =?utf-8?B?MnMzWXJDOVJPbFpsNFNyRlJxMnlIODBSWEJqM0hvRXk0Ym5USUVkTjJjcTNX?=
 =?utf-8?B?YnNNTlY1SnRET0pYc2hNYzI3Y3czYWdZaUw1THNhQzBxMVVjL1hLVXAyWCtU?=
 =?utf-8?B?MUI4SmtQSU5WZTV3VVE0UVV6aG9oV3dFTllrUFFuOFZYT2dGeTFJUGYwK1Z4?=
 =?utf-8?B?TWlUR1h2TFhMN3VzSXBXempZNGRGZDhhNzdoeUN2S1ZFYXdMSW51ZTV4TXZZ?=
 =?utf-8?B?SmMvUWVEMWl1SC9SMUJLZTF2NndSMnhPSVdiV3hMM2gzUDgxVWY0anRSdVhS?=
 =?utf-8?B?bTZQRlJISmhFcEdrMEF6WFJSR2wveHROWWpmK3M2UTF5c2Y3TTJhN3RGcG1w?=
 =?utf-8?B?cmlyWEFVT1B2RXpHdjdTTC9KRDRCVHJuOGQxdU1XN0kyUXpDUkM2b0ZBc3ZG?=
 =?utf-8?B?UUxvNUF0U0tlTHNYRkhmSE5vaEhWajJaaTF1TFFXQUpnNGNMNy9NRVJtUDNX?=
 =?utf-8?B?TnhQQ1hHWXhXZlpsYTdjZ2pXTnJTMDg1ZWExaVVNNm1icldiMmNsdnVaaGVr?=
 =?utf-8?B?WHhSTWZ4SERlaCtwNVN2Y3ZjVVRqNVBSaU1OL2VOVE1NaUpOdU16ZmNYd0V0?=
 =?utf-8?B?N0FsY1h6QUpLbUoyVmVVeFJzNDUxcVBFL3VFT0tjcXQyZ3g0eFZuOFArZ2hG?=
 =?utf-8?B?WUkyQTFFeVNEcnNwVEp4cTJRZFpCaFpqb2F3UkNiYjFqQ3VFbktQSURFLzNm?=
 =?utf-8?B?a3BYVFppeWQ2NnZNUW1MSk9RTnc0MTdaaituVTRRVkNhNGgzSmltK2xuVHk3?=
 =?utf-8?B?ZzFPcHM5aVN5OG9sK3FhZkV4dzlIVVZ2R0NWQ2JXbFZWRTFDR0JHeUR1SmZY?=
 =?utf-8?B?SlN5RWxwQnlJVmVEUWhHeFkwTmwvUnFLMENvRGQ1V0l2Y2tjQjc4THptUGZG?=
 =?utf-8?B?dmV6ZlY4TzN5NE9DWWEwK1ZTNGR5YTJ6RGVRRW9VcmpmdWRtOE9YaHZaWkg3?=
 =?utf-8?B?WTdSRjVYVUhVcWNnaW9vbTlxcnp1Wk1qbUM5NW9TeHU1Qk1aS2duZFBrbGRa?=
 =?utf-8?B?RDk1NGVmdSszbGp6R0YrZ0NVMk5sdkhjVW9scFIwZFlFSlEwaWI5L1BpTVRM?=
 =?utf-8?B?dnd3b1YrVXI5amdkZWxxSU1OQWlmME9VOW5XeGlTWkozUmhsdWEwaWx6cVlQ?=
 =?utf-8?B?TnJnbTQrMXpXZ3VKajFvMHpUczk5bHlkUWxSeWRUS2xDWUhvMVl6eHhXS2Vt?=
 =?utf-8?B?YkpVNk9LWXJSMTdIMWI1VEJCWTNOV0d6aitNZzJBZnUwZUF4b3MvUklSeFRw?=
 =?utf-8?B?bzJScjJiME5CVGlPcmdHOFo2aVVTeVU0MGorNy9NU1phZndRWnE3RHNETWpP?=
 =?utf-8?B?YjhYVXBXYzhCeXlyaFRwcG5aVy9XcVRSQXI5cm83ZHlOVjdmQitIMzBod0dr?=
 =?utf-8?B?MWtvQ1JjbTg3bERUOERQRW5LS1lKSUE4VTltbktGSHd2QnR0V245QkVQZmdM?=
 =?utf-8?B?OFE9PQ==?=
Content-ID: <D1E8F459FC1F5440B715C60599D3F1F4@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SI2PR03MB5885.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3202b9a1-abe8-4157-250c-08dc74a1ec24
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2024 05:43:17.9848
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: El7F2d2NLnQSK79tXnYKRIk1m5YN3zvktWpjADVbnSkkecWNlozb9u5y9VOAeBQFaNXZIQ7lsskJZY5W/oPXLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB8161
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--24.686000-8.000000
X-TMASE-MatchedRID: bo3l66eN8rbUL3YCMmnG4lt3XMydUaMXbbJe5V+4LlINcckEPxfz2DEU
	xl1gE1bkfdd9BtGlLLzx1uczIHKx54/qvvWxLCnegOqr/r0d+Cx+Mk6ACsw4JlwpnAAvAwaz5Qz
	lrvDXtyo9UqwAbdENgi6e1ADIRJCJF0rpaZ47th+Td7CJ8bYw077VXHusOfivNSweOixQAJJTuA
	Q+5yzMZ04W7yyyPEbztGsOD3P/3l3Qf/Mt4GBfbxIMDPFEv6UxWDdWpJMntKju6Fkg4cyCElq76
	7Z30NK4inSSFrOeQHLwmzALiKoiasvTk9bUe4riSHCU59h5KrGBHKTJ+sfXGYKwF4K/wIz9+Mzd
	OXklDHpRQOInRU3DTQrGcD6+dJT6wy6Tx10F8nXmAId+2bAQwkMYMp0ANFh56+6mfxThVmUHNZC
	oVB2xSL+4M5eHvRGV816p3ZU0neE9Xb7STHV7tbMjW/sniEQKoA9Le8XJpbpZxWTX4+l5tgHVre
	bjgv4S4vM1YF6AJbY9l7H+TFQgdbew1twePJJB3QfwsVk0UbuAUC1moT5enH7cGd19dSFd
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--24.686000-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 
	0F4BC343CAA1C6F5956E178EF951512D7F2459E8939F8FBC5179339559E340FC2000:8
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9FD973E937
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk,mediateko365.onmicrosoft.com:s=selector2-mediateko365-onmicrosoft-com];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.128/27];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[28];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,kernel.org,google.com,lists.infradead.org,lists.linaro.org,amd.com,quicinc.com,mediatek.com,ucw.cz,arm.com,emersion.fr,collabora.com,lists.freedesktop.org,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[mediatek.com:+,mediateko365.onmicrosoft.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: UNKAGLG5OREBGJKYYADSTSMEB5ISI7NY
X-Message-ID-Hash: UNKAGLG5OREBGJKYYADSTSMEB5ISI7NY
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "jstultz@google.com" <jstultz@google.com>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, =?utf-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "pavel@ucw.cz" <pavel@ucw.cz>, "robin.murphy@arm.com" <robin.murphy@arm.com>, "contact@emersion.fr" <contact@emersion.fr>, "jkardatzke@google.com" <jkardatzke@google.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@go
 ogle.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "ppaalanen@gmail.com" <ppaalanen@gmail.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, =?utf-8?B?WW91bGluIFBlaSAo6KO05Y+L5p6XKQ==?= <youlin.pei@mediatek.com>, =?utf-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 3/7] dma-buf: heaps: restricted_heap: Add private heap ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UNKAGLG5OREBGJKYYADSTSMEB5ISI7NY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Joakim,

Sorry for reply so late.

On Wed, 2024-01-31 at 14:53 +0100, Joakim Bech wrote:
>  	 
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  On Fri, Jan 12, 2024 at 05:20:10PM +0800, Yong Wu wrote:
> > Add "struct restricted_heap_ops". For the restricted memory,
> totally there
> > are two steps:
> > a) memory_alloc: Allocate the buffer in kernel;
> > b) memory_restrict: Restrict/Protect/Secure that buffer.
> > The memory_alloc is mandatory while memory_restrict is optinal
> since it may
> >
> s/optinal/optional/

Will Fix.

> 
> > be part of memory_alloc.
> > 
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >  drivers/dma-buf/heaps/restricted_heap.c | 41
> ++++++++++++++++++++++++-
> >  drivers/dma-buf/heaps/restricted_heap.h | 12 ++++++++
> >  2 files changed, 52 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/dma-buf/heaps/restricted_heap.c b/drivers/dma-
> buf/heaps/restricted_heap.c
> > index fd7c82abd42e..8c266a0f6192 100644
> > --- a/drivers/dma-buf/heaps/restricted_heap.c
> > +++ b/drivers/dma-buf/heaps/restricted_heap.c
> > @@ -12,10 +12,44 @@
> >  
> >  #include "restricted_heap.h"
> >  
> > +static int
> > +restricted_heap_memory_allocate(struct restricted_heap *heap,
> struct restricted_buffer *buf)
> > +{
> > +const struct restricted_heap_ops *ops = heap->ops;
> > +int ret;
> > +
> > +ret = ops->memory_alloc(heap, buf);
> > +if (ret)
> > +return ret;
> > +
> > +if (ops->memory_restrict) {
> > +ret = ops->memory_restrict(heap, buf);
> > +if (ret)
> > +goto memory_free;
> > +}
> > +return 0;
> > +
> > +memory_free:
> > +ops->memory_free(heap, buf);
> > +return ret;
> > +}
> > +
> > +static void
> > +restricted_heap_memory_free(struct restricted_heap *heap, struct
> restricted_buffer *buf)
> > +{
> > +const struct restricted_heap_ops *ops = heap->ops;
> > +
> > +if (ops->memory_unrestrict)
> > +ops->memory_unrestrict(heap, buf);
> > +
> > +ops->memory_free(heap, buf);
> > +}
> > +
> >  static struct dma_buf *
> >  restricted_heap_allocate(struct dma_heap *heap, unsigned long
> size,
> >   unsigned long fd_flags, unsigned long heap_flags)
> >  {
> > +struct restricted_heap *restricted_heap =
> dma_heap_get_drvdata(heap);
> >  struct restricted_buffer *restricted_buf;
> >  DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> >  struct dma_buf *dmabuf;
> > @@ -28,6 +62,9 @@ restricted_heap_allocate(struct dma_heap *heap,
> unsigned long size,
> >  restricted_buf->size = ALIGN(size, PAGE_SIZE);
> >  restricted_buf->heap = heap;
> >  
> > +ret = restricted_heap_memory_allocate(restricted_heap,
> restricted_buf);
> >
> Can we guarantee that "restricted_heap" here isn't NULL (i.e., heap-
> >priv). If
> not perhaps we should consider adding a check for NULL in the
> restricted_heap_memory_allocate() function?

heap->priv always is set when dma_heap_add is called. Suppose heap-
>priv is NULL, the KE would have already been occurred in
restricted_heap_add. I don't think it can be NULL. is it right?

> 
> > +if (ret)
> > +goto err_free_buf;
> >  exp_info.exp_name = dma_heap_get_name(heap);
> >  exp_info.size = restricted_buf->size;
> >  exp_info.flags = fd_flags;
> > @@ -36,11 +73,13 @@ restricted_heap_allocate(struct dma_heap *heap,
> unsigned long size,
> >  dmabuf = dma_buf_export(&exp_info);
> >  if (IS_ERR(dmabuf)) {
> >  ret = PTR_ERR(dmabuf);
> > -goto err_free_buf;
> > +goto err_free_restricted_mem;
> >  }
> >  
> >  return dmabuf;
> >  
> > +err_free_restricted_mem:
> > +restricted_heap_memory_free(restricted_heap, restricted_buf);
> >  err_free_buf:
> >  kfree(restricted_buf);
> >  return ERR_PTR(ret);
> > diff --git a/drivers/dma-buf/heaps/restricted_heap.h b/drivers/dma-
> buf/heaps/restricted_heap.h
> > index 443028f6ba3b..ddeaf9805708 100644
> > --- a/drivers/dma-buf/heaps/restricted_heap.h
> > +++ b/drivers/dma-buf/heaps/restricted_heap.h
> > @@ -15,6 +15,18 @@ struct restricted_buffer {
> >  
> >  struct restricted_heap {
> >  const char*name;
> > +
> > +const struct restricted_heap_ops *ops;
> > +};
> > +
> > +struct restricted_heap_ops {
> >
> This have the same name as used for the dma_heap_ops in the file
> restricted_heap.c, this might be a little bit confusing, or?

Thanks very much. I really didn't notice this. I will rename it.

> 
> > +int(*heap_init)(struct restricted_heap *heap);
> > +
> > +int(*memory_alloc)(struct restricted_heap *heap, struct
> restricted_buffer *buf);
> > +void(*memory_free)(struct restricted_heap *heap, struct
> restricted_buffer *buf);
> > +
> > +int(*memory_restrict)(struct restricted_heap *heap, struct
> restricted_buffer *buf);
> > +void(*memory_unrestrict)(struct restricted_heap *heap, struct
> restricted_buffer *buf);
> >
> Is the prefix "memory_" superfluous here in these ops?

I will remove "memory_".  But it looks like the "restrict" is a
keyword, I can't use it or it will build fail. Therefore I plan to use
alloc/free/restrict_buf/unrestrict_buf in next version.

> 
> Also related to a comment on the prior patch. The name here is "heap"
> for
> restricted_heap, but below you use rstrd_heap. It's the same struct,
> so I would
> advise to use the same name to avoid confusion when reading the code.
> As
> mentioned before, I think the name "rheap" would be a good choice.

I will use "rheap" to replace everywhere.

Thanks.

> 
> >  };
> >  
> >  int restricted_heap_add(struct restricted_heap *rstrd_heap);
> > -- 
> > 2.25.1
> > 
> 
> -- 
> // Regards
> Joakim
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
