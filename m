Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 351E460C356
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 07:36:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CD663EE41
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 05:36:36 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2083.outbound.protection.outlook.com [40.107.93.83])
	by lists.linaro.org (Postfix) with ESMTPS id EB7A03EC21
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Sep 2022 08:39:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UpbvKcs3LnHRe0wW9lYB1K/+0yL3PqwSbZObMnpkYa+2ewS7sIXpHQ6W2kL6YhBbdLh06aGl70cvwUk+AKM7hNqAVjLK23rv4JuaQ/Lo/GwBilbwuUYAOOXgB72vY5VoSWli8dXu2JW0CWw0lAKMBZI8x16/piqqwjlCmb+srlskU65aWFhhVYTkSfb7RmRxzXzS8CXMY5il3eEyHiYyUGEnKOEi3Y5spsDy+iI0u8IQWBD3fQQ29mfBz1aqIKo4ZCOQegutPKpjQu0W5//8+MKGt9jKi6LluTDcS3SljVhbcpheXXMSbOQQYDIEYyngwKJAwxbnsaZdLA0qUEyZyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QRVe+irIhR5dhl3rwxRVJItNumO1KPRFGlC7UQFfTKE=;
 b=O0KWVr6msM0fPD7V/oF8fzO8t/QmyCIzdpaOYP8JjUOOjrmgl4Fr9hGqfrIKCv7jn5QWB5UwhXn7LmYNV9UTpOGb3hfNU68rNVTmPYQ/HnHRGXqPa9oZaUIk+806siBdZOfXncvP80UHlFHYxXwX/y/OKEjQXk/vDcmlIDYFIvW2l/+db8QWcZAoWrIFBCAbKkkJDcsTmLC3A0g23OtV5CFfLnfsFGcIkVlf/MjXpNpE64uzoTvRZ0CwAiqSG4/cnzYG1g0t8prtlb2+VrkeaWxGgjdAAwZPNa2fAurDj/EFRH6MzoXylJDES2RPydmUmvLVMl/icZaSkLQv5CAo0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QRVe+irIhR5dhl3rwxRVJItNumO1KPRFGlC7UQFfTKE=;
 b=U3OK4zW0wJ69LtbQAlVf0H1MDZFYXglT+lNM9bC3pNHDk8SdgS6H+EhO2IhPu6MniNaNFcq7hjaXiIuGBpfEifY5DXXouHg/HQEXRXZ5C1SWLBz9WGX5AeP2cc9HBFCEzLSZugDoEirkwDmb3eZAp4NzspARrJg+JjZLe7MHipU=
Received: from MW3PR06CA0002.namprd06.prod.outlook.com (2603:10b6:303:2a::7)
 by DM4PR12MB5310.namprd12.prod.outlook.com (2603:10b6:5:39e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Fri, 30 Sep
 2022 08:39:45 +0000
Received: from CO1NAM11FT080.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:2a:cafe::ed) by MW3PR06CA0002.outlook.office365.com
 (2603:10b6:303:2a::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.23 via Frontend
 Transport; Fri, 30 Sep 2022 08:39:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CO1NAM11FT080.mail.protection.outlook.com (10.13.174.99) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5676.17 via Frontend Transport; Fri, 30 Sep 2022 08:39:44 +0000
Received: from amd.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Fri, 30 Sep
 2022 03:39:39 -0500
From: Arvind Yadav <Arvind.Yadav@amd.com>
To: <Christian.Koenig@amd.com>, <andrey.grodzovsky@amd.com>,
	<shashank.sharma@amd.com>, <amaranath.somalapuram@amd.com>,
	<Arunpravin.PaneerSelvam@amd.com>, <sumit.semwal@linaro.org>,
	<gustavo@padovan.org>, <airlied@linux.ie>, <daniel@ffwll.ch>,
	<linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linaro-mm-sig@lists.linaro.org>, <linux-kernel@vger.kernel.org>,
	<steven.price@arm.com>
Date: Fri, 30 Sep 2022 14:08:57 +0530
Message-ID: <20220930083857.3950-1-Arvind.Yadav@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT080:EE_|DM4PR12MB5310:EE_
X-MS-Office365-Filtering-Correlation-Id: 3298a2d0-b5b9-4f59-b005-08daa2bf536d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	bUJZAyg2fTnx08FV5s/yww7KpwdINCuH4T9wgf2LNentPDLEbJktGP2AGQ9CYSgOkFPXWQiG7L9FAQUuyBZHk8JRVjyQcLXSDyyqx0apCnFtJCnxedgEBjL3FtonN0AeGjmvzfKnenLc6Nnwvr3XCnXw26klvp0MsLc0P9PkU1LJ7oDV0xIbYij1LXfbfYZa/Fvv1IKEU4NpN0fRSu3ydcLxCQR4T5yT3nGzan1MvVp3n5ghUvQhs0SRtNAV+FjgeSCce07BpCdtlegvhUNRRATr4NONlK9IiIFZs0llAguWiheTM0LZfiZn0qM0lnRHlCpXRt+Jcrx0kCybQN84Lk/xjEjZCTSonVgsZhxORQL3li+n059d2bLig+dWDUvPKtWqz1K2QqAxcOQq3OrPsDEeqMbH83FH8oh7a4ytllsy38Bt7GACr6drRn/9/9T3sLC66uHIwO9ThA6QrzzDMkPRIYeX6ntU0p9noUskgsryPYgztDEbjCSW/enTE/Vh1oT9tlwcbyn7PIIjRj8HlLkAS6Eenw2Xi1sY3wHewbFIGOINjWQt1326DuHWpfJv6urjNLd8QKmwN6KWcF8mYq9iGwGsHdPU/3r2sqMdzdAwxdOWwc3Xf4rSGM+LnauMWlpUnGzhIy3mPngeeeePpPiijXEtLprQQWliGCpRucZnoZ0LdRwKxveYSV2n7Hd06nVeUmgwttS078D8bQe6XGhB+WWX+BfAnLAaHLhFhsxpN9ovAd+napW8aYRgjvHxeOF9VgO/dU2o2d8GtJfY9owkZHPtddXW940L+PbrDCBjM4zy8Hlh37UD/5UNFfUaqU/GnWg2KboL1K3CSbR3ZInzqwHrZ35+G3Wzp3QrHvc=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(376002)(346002)(136003)(451199015)(40470700004)(36840700001)(46966006)(186003)(1076003)(16526019)(336012)(47076005)(2616005)(426003)(5660300002)(6666004)(82310400005)(7696005)(26005)(4744005)(81166007)(478600001)(921005)(82740400003)(40480700001)(86362001)(356005)(2906002)(40460700003)(83380400001)(36756003)(36860700001)(70586007)(41300700001)(8676002)(4326008)(70206006)(110136005)(8936002)(316002)(83996005)(2101003)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 08:39:44.6622
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3298a2d0-b5b9-4f59-b005-08daa2bf536d
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	CO1NAM11FT080.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5310
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: EB7A03EC21
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.50)[2603:10b6:303:2a::7:received,165.204.84.17:received,40.107.93.83:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	HAS_XOIP(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,amd.com:dkim];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.83:from]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=U3OK4zW0;
	spf=pass (lists.linaro.org: domain of Arvind.Yadav@amd.com designates 40.107.93.83 as permitted sender) smtp.mailfrom=Arvind.Yadav@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EXYHSYQ5S4VXHJKZYRHIW7MHQ3OKUTXY
X-Message-ID-Hash: EXYHSYQ5S4VXHJKZYRHIW7MHQ3OKUTXY
X-Mailman-Approved-At: Tue, 25 Oct 2022 05:32:22 +0000
CC: Arvind Yadav <Arvind.Yadav@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] Add NULL check for s_fence->parent
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EXYHSYQ5S4VXHJKZYRHIW7MHQ3OKUTXY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

NULL check is added for s_fence->parent.

Signed-off-by: Arvind Yadav <Arvind.Yadav@amd.com>
---
 drivers/gpu/drm/scheduler/sched_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
index 4f2395d1a791..6684d88463b4 100644
--- a/drivers/gpu/drm/scheduler/sched_main.c
+++ b/drivers/gpu/drm/scheduler/sched_main.c
@@ -829,7 +829,8 @@ drm_sched_get_cleanup_job(struct drm_gpu_scheduler *sched)
 	job = list_first_entry_or_null(&sched->pending_list,
 				       struct drm_sched_job, list);
 
-	if (job && dma_fence_is_signaled(job->s_fence->parent)) {
+	if (job && job->s_fence->parent &&
+	    dma_fence_is_signaled(job->s_fence->parent)) {
 		/* remove job from pending_list */
 		list_del_init(&job->list);
 
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
